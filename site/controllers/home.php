<?php
ob_start();
require_once "PHPMailer-master/src/PHPMailer.php";
require_once "PHPMailer-master/src/SMTP.php";
require_once 'models/home.php';
$act = "index";
if (isset($_GET['act']) == true) $act = $_GET['act'];
switch ($act) {
  case 'index':
    //Xem căn hộ
    $ds_lc = getLoaican();
    $ds_ch = getALLcan_hoNew();
    $ds_ch2 = getALL_canhoNew2();
    $quan = getallquan();
    $loaican = getallloai_can();
    $kh = khachhang($_SESSION['id'] ?? null);
    require_once 'views/layout.php';
    break;
  case 'chi_tiet':
    if (isset($_GET['canhoid']) == true) {
      $can_ho = getcan_hoByid($_GET['canhoid']);
      require_once 'views/chi_tiet.php';
    }
    break;
  case 'dat_lich':
    if (isset($_GET['canhoid']) == true) {
        $kh = khachhang($_SESSION['id']);
      $idcanho = getcan_hoByid($_GET['canhoid']);
      require_once 'views/dat_lich.php';
    }
    break;

    // thay doi thông tin tk
  case 'thaydoitt':
    $tentk = $_POST['tenkh'];
    $ma_tk = $_POST['ma_tk'];
    $email = $_POST['email'];
    $sdt = $_POST['sdt'];
    $pathimg = '../uploaded/users/';
    
    $cmnd_truoc_file = $_FILES['cmnd_truoc'];
    $cmnd_truoc_name = null;
    if ($cmnd_truoc_file['size'] > 0) {
      $cmnd_truoc_name = uniqid() . $_FILES['cmnd_truoc']['name'];
      // Chỉ upload file định dạnh ảnh
      if (in_array($cmnd_truoc_file['type'], ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']) ) {
        $target_files = $pathimg . basename($cmnd_truoc_name);
        move_uploaded_file($cmnd_truoc_file['tmp_name'], $target_files);
      }
    }

    $cmnd_sau_file = $_FILES['cmnd_sau'];
    $cmnd_sau_name = null;
    if ($cmnd_sau_file['size'] > 0) {
      $cmnd_sau_name = uniqid() . $_FILES['cmnd_sau']['name'];
      // Chỉ upload file định dạnh ảnh
      if (in_array($cmnd_sau_file['type'], ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']) ) {
        $target_files = $pathimg . basename($cmnd_sau_name);
        move_uploaded_file($cmnd_sau_file['tmp_name'], $target_files);
      }
    }

    updatekh($tentk, $ma_tk, $email, $sdt, $cmnd_truoc_name, $cmnd_sau_name);
    header('location: ?act=thongtintk&ma_tk=' . $ma_tk . '');
    break;
  case 'dangnhap':
    require_once 'views/login.php';
    break;
    // dang ký:
  case 'dangky':
    $erro = array();
    // Kiểm lỗi
    if (empty($_POST['user'])) {
      $erro['user'] = "Tên tài không để trống";
    } elseif (checktkdn($_POST['user'])) {
      $erro['user'] = 'Tài khoản tồn tại !';
    } else {
      $user = $_POST['user'];
    }
    //Kiểm lỗi họ tên
    if (empty($_POST['ho_ten'])) {
      $erro['ho_ten'] = "Họ tên không để trống";
    } else {
      $ho_ten = $_POST['ho_ten'];
    }
    // Kiểm lỗi mật khẩu
    if (empty($_POST['pass'])) {
      $erro['pass'] = "Mật khẩu không để trống";
    } elseif (strlen($_POST['pass']) < 6) {
      $erro['pass'] = "Mật khẩu của bạn quá ngắn !";
    } else {
      $pass = $_POST['pass'];
    }
    // check email
    if (empty($_POST['email'])) {
      $erro['email'] = 'Email không để trống !';
    } elseif (filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $erro['email'] = 'Email không hợp lệ !';
    } elseif (checktkemail($_POST['email'])) {
      $erro['email'] = 'Email tồn tại !';
    } else {
      $email = $_POST['email'];
    }

    if (empty($erro)) {
      // lưu thông tin đăng nhập
      // GỬi mail
      $message = "Thành công !";
      $random = substr(md5('adhwe$#&^'), 12);
      $idUser = Luuthongtintk($ho_ten, $user, md5($pass), $email, $random);

      // $mail = new PHPMailer\PHPMailer\PHPMailer(true);  //true: enables exceptions
      // try {
      //   $mail->SMTPDebug = 0;  // Enable verbose debug output
      //   $mail->isSMTP();
      //   $mail->CharSet  = "utf-8";
      //   $mail->Host = 'smtp.gmail.com';  //SMTP servers
      //   $mail->SMTPAuth = true; // Enable authentication
      //   $mail->Username = 'longdhai2@gmail.com';  // SMTP username
      //   $mail->Password = 'hailong289';   // SMTP password
      //   $mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
      //   $mail->Port = 465;  // port to connect to                
      //   $mail->setFrom('longdhai2@gmail.com', 'goldenhome');
      //   $mail->addAddress($email, $user); //mail và tên người nhận       
      //   $mail->isHTML(true);  // Set email format to HTML
      //   $mail->Subject = 'Kích hoạt tài khoản';
      //   $linkKH = "<a href='dangtinabc.com/Github/site/?ctrl=home&act=kichhoat&id=" . $idUser . "'>Nhấp vào đây</a>";
      //   // $linKH = sprintf($linkKH, $idUser);
      //   $mail->Body = "<h4>Chào mừng thành viên mới</h4>Kích hoạt tài khoản: " . $linkKH;
      //   $mail->send();
      //   $message = 'kích hoạt tài khoản !';
      // } catch (Exception $e) {
      //   echo 'Mail không gửi được. Lỗi: ', $mail->ErrorInfo;
      // }
      //header('location: ?act=gui_lmail&ma_tk='.$idUser.'');
        $tentk = $user;
        $pass = md5($pass);
        $checktk = checktk($tentk, $pass);
        if (is_array($checktk)) {
        $_SESSION['user'] = $checktk['ten_tk'];
        $_SESSION['name'] = $checktk['ho_ten'];
        $_SESSION['email'] = $checktk['email'];
        $_SESSION['id'] = $checktk['ma_tk'];
        $_SESSION['shinh'] = $checktk['hinh'];
        $_SESSION['mat_khau'] = $checktk['mat_khau'];
        $_SESSION['vai_tro'] = $checktk['vai_tro'];
        $_SESSION['sdt'] = $checktk['sdt'];
        $_SESSION['gioitinh'] = $checktk['gioitinh'];
          header('location: index.php');
      }
    }
    require_once 'views/login.php';
    break;
//

  case 'kiemloi':
    if (isset($_GET['pass']) == true) {
      $erro = array();
      $pass = $_GET['pass'];
      if (empty($pass)) {
        echo "<span>Mật khẩu không để trống</span>";
      } elseif (strlen($pass) < 6) {
        echo "<span>Mật khẩu của bạn quá ngắn !</span>";
      } else {
        echo "<span style='background-color: green;'>An toàn</span>";
      }
    }
    // kiểm lỗi họ và tên
    if (isset($_GET['ho_ten']) == true) {
      if (empty($_GET['ho_ten'])) {
        echo "<span> không để trống</span>";
      }
    }
    // Kiểm lỗi tên đăng nhập
    if (isset($_GET['user']) == true) {
      if (empty($_GET['user'])) {
        echo "<span> không để trống</span>";
      } elseif (checktkdn($_GET['user'])) {
        echo "<span>Tên tài khoản đã tồn tại</span>";
      } else {
        echo "";
      }
    }
    break;
  case 'dangnhap_':
    $tentk = $_POST['tentk'];
    $pass = md5($_POST['pass']);
    $checktk = checktk($tentk, $pass);
    if (is_array($checktk)) {
      
      $_SESSION['user'] = $checktk['ten_tk'];
      $_SESSION['name'] = $checktk['ho_ten'];
      $_SESSION['email'] = $checktk['email'];
      $_SESSION['id'] = $checktk['ma_tk'];
      $_SESSION['shinh'] = $checktk['hinh'];
      $_SESSION['mat_khau'] = $checktk['mat_khau'];
      $_SESSION['vai_tro'] = $checktk['vai_tro'];
      $_SESSION['sdt'] = $checktk['sdt'];
      $_SESSION['gioitinh'] = $checktk['gioitinh'];
        $message_dn = 'Đăng nhập thành công';
        header('location: index.php');
    } else {
      $error_dn = 'Sai tài khoản hoặc mật khẩu !';
    }
    require_once 'views/login.php';
    break;
    //dang xuat
  case 'dangxuat':
    if (isset($_GET['logout']) && $_GET['logout'] == 1) {
      session_destroy();
      header('location: index.php');
    }
    break;

    // dôi mk
  case 'doimk_':
    $pass_cu = $_POST['passcu'];
    $pass_new = $_POST['passnew'];
    $repass = $_POST['repassnew'];
    $ma_tk = $_POST['ma_tk'];
    if (checkmkcu(md5($pass_cu), $ma_tk)) {
      if ($pass_new == $repass) {
        UpdatePassnew(md5($pass_new), $ma_tk);
        $message = 'Đổi mật khẩu thành công !';
        $rows = 'views/doimk.php';
        $view = 'views/thongtintk.php';
        require_once 'views/layout.php';
      } else {
        $message = 'Mật khẩu mới không trùng khớp !';
        $rows = 'views/doimk.php';
        $view = 'views/thongtintk.php';
        require_once 'views/layout.php';
      }
    } else {
      $message = 'Mật khẩu cũ không trùng khớp !';
      $rows = 'views/doimk.php';
      $view = 'views/thongtintk.php';
      require_once 'views/layout.php';
    }
    break;
  case 'dangtin':
    $quan = getallquan();
    $loaican = getallloai_can();
    $loaican1 = getallloai_can();
    $quanall = getallquan();
    $quanallz = getallquan();
    require_once 'views/dangtin.php';
    break;
  case 'danhsach':
  $kh = khachhang($_SESSION['id']);
    $page_num = 1;
    if (isset($_GET['page']) == true) $page_num = $_GET['page'];
    $page_size = PATH_SITE;
    if (isset($_GET['loai_can']) == true) {
      $loaican = $_GET['loai_can'];
      $page_num = 1;
      if (isset($_GET['page']) == true) $page_num = $_GET['page'];
      $page_size = PATH_SITE;
      $dsch_tl = getCanho_theoloai($loaican, $page_num, $page_size);
      $toltal_rows = Demcanhotheoloai($loaican);
      $basrurl = "?act=danhsach&loai_can={$loaican}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    } elseif (isset($_GET['ma_quan']) == true && isset($_GET['id']) == false) {
      $ma_quan = $_GET['ma_quan'];
      $page_num = 1;
      if (isset($_GET['page']) == true) $page_num = $_GET['page'];
      $page_size = PATH_SITE;
      $dsch_tl = getCanho_theoquan($ma_quan, $page_num, $page_size);
      $toltal_rows = Demcanhotheoquan($ma_quan);
      $basrurl = "?act=danhsach&ma_quan={$ma_quan}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    } elseif (isset($_GET['id']) == true && isset($_GET['ma_quan']) == true) {
      $ma_quan = $_GET['ma_quan'];
      $id = $_GET["id"];
      $page_num = 1;
      if (isset($_GET['page']) == true) $page_num = $_GET['page'];
      $page_size = PATH_SITE;
      $dsch_tl = getCanho_theophuong($id, $page_num, $page_size);
      $toltal_rows = Demcanhotheophuong($id);
      $basrurl = "?act=danhsach&phuong={$id}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    } elseif (isset($_GET['dien_tich']) == true) {
      $dien_tich = $_GET['dien_tich'];
      $page_num = 1;
      if (isset($_GET['page']) == true) $page_num = $_GET['page'];
      $page_size = PATH_SITE;
      $dsch_tl = getDIentichall($dien_tich, $page_num, $page_size);
      $toltal_rows = DemcanhotheoDientich($dien_tich);
      $basrurl = "?act=danhsach&dien_tich={$dien_tich}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    } elseif (isset($_GET['p_vs']) == true) {
      $so_phong_vs = $_GET['p_vs'];
      $dsch_tl = getSopVS($so_phong_vs, $page_num, $page_size);
      $toltal_rows = DemSop_vs($so_phong_vs);
      $basrurl = "?act=danhsach&p_vs={$so_phong_vs}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    }elseif(isset($_GET['h_n'])){
      $huong_nha = $_GET['h_n'];
      $dsch_tl = getHuong_nha($huong_nha, $page_num, $page_size);
      $toltal_rows = DemHuong_nha($huong_nha);
      $basrurl = "?act=danhsach&h_n={$huong_nha}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    }elseif(isset($_GET['p_ngu'])){
       $so_phong_ngu = $_GET['p_ngu'];
       $dsch_tl = getSop_n($so_phong_ngu,$page_num, $page_size);
       $toltal_rows = DemchB_spn($so_phong_ngu);
       $basrurl = "?act=danhsach&p_ngu={$so_phong_ngu}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    }elseif(isset($_GET['price'])){
      $mucgia = $_GET['price'];
      $dsch_tl = getch_tgia($mucgia, $page_num, $page_size);
      $toltal_rows = Demcanhotheogia2($mucgia);
      $basrurl = "?act=danhsach&price={$mucgia}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    }

    $quan = getallquan();
    $quanz = getallquan();
    $quanzz = getallquan();
    $quanzzz = getallquan();
    $loaican = getallloai_can();
    $loaicanz = getallloai_can();
    

    require_once 'views/danhsach.php';
    break;
  case 'phuong':
    // require_once "models/can_ho.php";

    $ds_p = getphuongbyidquan($_POST['quanid']);
    foreach ($ds_p as $p) {
      echo ' <option value="' . $p['id'] . '">' . $p['phuong'] . '</option>';
    }
    break;
  case 'ct_canho':
    // require_once "models/can_ho.php";

    $canhoid = canho($_POST['canhoid']);


    break;
  case 'about':
    $quan = getallquan();
    $kh = khachhang($_SESSION['id']);
    require_once 'views/about.php';
    break;
  case 'chitiet':
    $ma_can = $_GET["ma_can"];
    $row = getcan_hoByid($ma_can);
    $quanall = getallquan();
    $quan = getallquan();
    $quanz = getallquan();
    $loaican = getallloai_can();
    $loaicanz = getallloai_can();
    $kh = khachhang($_SESSION['id']);
    require_once 'views/chitiet.php';
    break;
  case 'ch-dd':
    $ma_tk = $_GET["ma_tk"];
    $kh = khachhang($_SESSION['id']);
    $dsch = canhodadang($ma_tk);
    $rows = 'views/canhodadang.php';
    $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
  case 'edit_ch':
    $ma_can = $_GET['ma_can'];
    settype($ma_can, 'int');
    $quan = getallquan();
    $loaican = getallloai_can();
    $can_ho = canho($ma_can);
    $quanall= getallquan();
    require_once 'views/can_ho-edit.php';
    break;
    // update căn hô
  case 'update_ch':
    if (isset($_POST["ten_can_ho"]) && $_POST["ten_can_ho"] != "") {
      $ten_can_ho = trim(strip_tags($_POST["ten_can_ho"]));
      $ma_can = $_POST['ma_can'];
      $ma_loai = $_POST["ma_loai"];
      $ma_tk = $_GET['ma_tk'];
      $ma_quan = $_POST["ma_quan"];
      $dia_chi = $_POST["dia_chi"];
      $dien_tich = $_POST["dien_tich"];
      $tang = $_POST["tang"];
      $so_phong_ngu = $_POST["so_phong_ngu"];
      $so_phong_vs = $_POST["so_phong_vs"];
      $gia_thue = $_POST["gia_thue"];
      $chi_phi = $_POST["chi_phi_khac"];
      $huong_nha = $_POST["huong_nha"];
      $ghi_chu = $_POST["ghi_chu"];
      $tien_ich = $_POST["tien_ich"];
      $an_hien = 0;
      $ma_phuong = $_POST["phuong"];
      // Hình
      if ($_FILES['hinh']['name'] != null) {
        $hinh = $_FILES['hinh']['name'];
        $pathimg = '../uploaded/';
        $target_files = $pathimg . basename($hinh);
        move_uploaded_file($_FILES['hinh']['tmp_name'], $target_files);
      } else {
        $hinh = $_POST['img'];
      }
      if ($_FILES['hinha']['name'] != null) {
        $hinha = $_FILES['hinha']['name'];
        $pathimg = '../uploaded/';
        $target_files = $pathimg . basename($hinha);
        move_uploaded_file($_FILES['hinha']['tmp_name'], $target_files);
      } else {
        $hinha = $_POST['imga'];
      }

      if ($_FILES['hinhb']['name'] != null) {
        $hinhb = $_FILES['hinhb']['name'];
        $pathimg = '../uploaded/';
        $target_files = $pathimg . basename($hinhb);
        move_uploaded_file($_FILES['hinhb']['tmp_name'], $target_files);
      } else {
        $hinhb = $_POST['imgb'];
      }

      if ($_FILES['hinhc']['name'] != null) {
        $hinhc = $_FILES['hinhc']['name'];
        $pathimg = '../uploaded/';
        $target_files = $pathimg . basename($hinhc);
        move_uploaded_file($_FILES['hinhc']['tmp_name'], $target_files);
      } else {
        $hinhc = $_POST['imgc'];
      }
      settype($ma_can, 'int');
      settype($ma_loai, "int");
      settype($ma_quan, "int");
      settype($so_phong_ngu, "int");
      settype($so_phong_vs, "int");
      settype($tang, "int");
      settype($gia_thue, "int");
      settype($dien_tich, "int");
      settype($ma_tk, "int");
      settype($ma_phuong, "int");
      settype($huong_nha, "int");
      Update_chdt($ma_tk, $ma_loai, $ma_quan, $ma_phuong, $dia_chi, $ten_can_ho, $dien_tich, $tang, $so_phong_ngu, $so_phong_vs, $gia_thue, $chi_phi, $huong_nha, $hinh, $hinha, $hinhb, $hinhc, $ghi_chu, $tien_ich, $ma_can);
      header("location: ?act=ch-dd&ma_tk=" . $_SESSION["id"] . "");
    } else {
      header("location: ?act=edit_ch");
    }
    # code...
    break;
    //phần thông báo
    case 'ds-ld':
    $ma_tk = $_GET["ma_tk"];
    $dsld = getthongbao($ma_tk);
    $kh = khachhang($_SESSION['id']);
    $rows = 'views/dslich_dat.php';
    $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
  case 'hop-dong':
      $ma_tk = $_GET["ma_tk"];
      $hd = hopdong($ma_tk);
      $kh = khachhang($_SESSION['id']);
      $rows = 'views/hopdong.php';
      $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
    case 'giahan':
        $ma_tk = $_GET["ma_tk"] ?? null;
        $hd = hopdong($ma_tk);
      if (isset($_GET['canhoid']) == true) {
            $idcanho = getcan_hoByid($_GET['canhoid']);
            require_once 'views/giahan.php';
        }
    break;
    case 'giahanhopdong';
    try {
        if ($_POST["ngay_het_han"] != "") {
            if (isset($_POST["dat1"])) {
                $ma_tk = $_POST['ma_tk'];
                $ngay_thue = $_POST["ngay_thue"];
                $ngay_het_han = $_POST["ngay_het_han"];
                if ($ngay_thue <= $ngay_het_han) {
                  giahan($ngay_thue,$ngay_het_han, $ma_tk);
                }
                header("location: " . "?act=hop-dong&ma_tk=$ma_tk");
                break;
            }
        } else {
          header("location: ?act=hop-dong&ma_tk=" . $_SESSION["id"] . "");
        }
    } catch (\Exception $e) {
        dd($e);
    }

        break;

    case 'add-hd':
        $ma_tk = $_GET["ma_tk"];
        $dsch = canhodadang($ma_tk);
        $kh = khachhang($_SESSION['id']);
        $rows = 'views/addhd.php';
        $view = 'views/thongtintk.php';
        require_once 'views/layout.php';
        break;
  case 'add-gh':
    $idproduct = $_GET['id'];
    settype($idproduct, 'int');
    $ds_ch = getALL_canhoNew3();
    $newproduct = array();
    foreach ($ds_ch as $list) {
      $newproduct[$list['ma_can']] = $list;
    }
    // echo "<pre>";
    // print_r($newproduct[$idproduct]);
    if (!isset($_SESSION['cart']) && $_SESSION['cart'] == null) {
      $newproduct[$idproduct]['sl'] = 1;
      $_SESSION['cart'][$idproduct] = $newproduct[$idproduct];
    } else {

      if (array_key_exists($idproduct, $_SESSION['cart'])) {
        //  echo 'Có tồn tại trong giỏ';
      } else {
        echo 'Sản phẩm có ' . $idproduct . ' chưa có trong giỏ';
        $newproduct[$idproduct]['sl'] = 1;
        $_SESSION['cart'][$idproduct] = $newproduct[$idproduct];
      }
    }
    header("location: index.php?act=chitiet&ma_can=" . $idproduct . "");
    break;
  case 'delete-gh':
    $ma_can = $_GET['id'];
    unset($_SESSION['cart'][$ma_can]);
    header("location: index.php?act=chitiet&ma_can=" . $ma_can . "");
    break;
  case 'lichsu':
    $ma_tk = $_GET["ma_tk"];
    $kh = khachhang($_SESSION['id']);
    $lichsu = lichsu($ma_tk);
    $rows = 'views/lichsu.php';
    $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
  case 'thongbao':
    $ma_tk = $_GET["ma_tk"];
    $showtb = getthongbao($ma_tk);
    $kh = khachhang($_SESSION['id']);
    $rows = 'views/thongbao.php';
    $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
  case 'thongtintk':
    $quan = getallquan();
    $kh = khachhang($_SESSION['id']);
    $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
    // thanh toán khi đăng tin
//    case 'thanhtoan';
//
//        require_once 'views/layout.php';
//        break;

  case 'doimk':
    $kh = khachhang($_SESSION['id']);
    $rows = 'views/doimk.php';
    $view = 'views/thongtintk.php';
    require_once 'views/layout.php';
    break;
  case 'dangtincanho':
      if ($kh->currency <= 10000){
    if (isset($_POST["ten_can_ho"]) && $_POST["ten_can_ho"] != "") {
//        echo "<pre>";
//        var_dump($_POST); die;
      $ten_can_ho = trim(strip_tags($_POST["ten_can_ho"]));
      $ma_loai = $_POST["ma_loai"];
      $ma_tk = $_GET['ma_tk'];
      $ma_quan = $_POST["ma_quan"];
      $dia_chi = $_POST["dia_chi"];
      $dien_tich = $_POST["dien_tich"];
      $tang = $_POST["tang"];
      $so_phong_ngu = $_POST["so_phong_ngu"];
      $so_phong_vs = $_POST["so_phong_vs"];
      $gia_thue = $_POST["gia_thue"];
      $chi_phi = $_POST["chi_phi_khac"];
      $huong_nha = $_POST["huong_nha"];
      $ghi_chu = $_POST["ghi_chu"];
      $tien_ich = $_POST["tien_ich"];
      $an_hien = 0;
      $ma_phuong = $_POST["phuong"];

        // Hình
      $hinh = $_FILES['hinh']['name'];
      $pathimg = '../uploaded/';
      $target_files = $pathimg . basename($hinh);
        move_uploaded_file($_FILES['hinh']['tmp_name'], $target_files);
      if ($hinh == "") {
        $hinh = "no-img.png";
      }

      $hinha = $_FILES['hinha']['name'];
      $pathimg = '../uploaded/';
      $target_files = $pathimg . basename($hinha);
      move_uploaded_file($_FILES['hinha']['tmp_name'], $target_files);
      if ($hinha == "") {
        $hinha = "no-img.png";
      }

      $hinhb = $_FILES['hinhb']['name'];
      $pathimg = '../uploaded/';
      $target_files = $pathimg . basename($hinhb);
      move_uploaded_file($_FILES['hinhb']['tmp_name'], $target_files);
      if ($hinhb == "") {
        $hinhb = "no-img.png";
      }

      $hinhc = $_FILES['hinhc']['name'];
      $pathimg = '../uploaded/';
      $target_files = $pathimg . basename($hinhc);
      move_uploaded_file($_FILES['hinhc']['tmp_name'], $target_files);
      if ($hinhc == "") {
        $hinhc = "no-img.png";
      }
      settype($ma_loai, "int");
      settype($ma_quan, "int");
      settype($so_phong_ngu, "int");
      settype($so_phong_vs, "int");
      settype($tang, "int");
      settype($gia_thue, "int");
      settype($dien_tich, "int");
      settype($ma_tk, "int");
      settype($ma_phuong, "int");
      settype($huong_nha, "int");
      themcanho($ma_tk, $ma_loai, $ma_quan, $ma_phuong, $dia_chi, $ten_can_ho, $dien_tich, $tang, $so_phong_ngu, $so_phong_vs, $gia_thue, $chi_phi, $huong_nha, $hinh, $hinha, $hinhb, $hinhc, $ghi_chu, $tien_ich, $an_hien);
      header("location: ?ctrl=home&act=ch-dd&ma_tk=" . $_SESSION["id"] . "");
    } else {
      header("location: ?ctrl=home&act=dangtin");
    }
      }
      else{
          echo (' Số dư tài khoản không đủ để thực hiện đăng tin');
      };

    break;

  case 'datlichxem';
    if ($_POST["ngay_xem"] != "") {
      if (isset($_POST["dat"])) {

        $ma_can = $_POST['ma_can'];
        $trang_thai_lich = $_POST['trang_thai_lich'];
        $ma_tk = $_POST['ma_tk'];
        $ngay_xem = $_POST["ngay_xem"];
        $ngay_dat = $_POST["ngay_dat"];
        $ten_nguoi_dat = $_POST["ten_nguoi_dat"];
        $sodt = $_POST["sodt"];
        $gio_xem = $_POST["gio_xem"];
        $ghi_chu = $_POST["ghi_chu"];
        $ma_dat = getMaxId('dat_lich')['id'] + 1;
        datlichid($ma_can, $ma_dat, $ma_tk, $ngay_xem, $ngay_dat ,$trang_thai_lich, $ten_nguoi_dat ,$sodt, $gio_xem , $ghi_chu );
        header("location: " . "?ctrl=home&act=lichsu&ma_tk=$ma_tk");
        break;
      }
    } else {
      $message = "Bạn chưa đặt ngày";
      $ds_lc = getLoaican();
      $ds_ch = getALLcan_hoNew();
      $ds_ch2 = getALL_canhoNew2();
      require_once "views/layout.php";
    }

    break;
  case 'delete_ch':
    $ma_can = $_GET['ma_can'];
    settype($ma_can, 'int');
    DeleteCanho_dd($ma_can);
    header('location: ?act=ch-dd&ma_tk=' . $_SESSION['id'] . '');
    break;

    //Hủy lịch đả đặt
  case 'deletedatlich':
    $ma_dat = $_GET["ma_dat"];
    xoadatlich($ma_dat);
    $thongbao = "Hủy thành công";
    header("location: ?act=ds-ld&ma_tk=" . $_SESSION['id'] . "");
    break;
    //tìm kiếm nhanh
  case 'timkiemnhanh':
    if (isset($_POST["timnhanh"])) {
      if (isset($_POST["ma_quan"]) == true && isset($_POST["loai_can"]) == true) {
        $ma_quan = $_POST["ma_quan"];
        $loaican = $_POST["loai_can"];
        $page_num = 1;
        if (isset($_GET['page']) == true) $page_num = $_GET['page'];
        $page_size = PATH_SITE;
        $dsch_tl = getCanho_theoquanvaloaican($loaican, $ma_quan, $page_num, $page_size);
        $toltal_rows = Demcanhotheoquanvaloaican($loaican, $ma_quan);
        $basrurl = "?act=danhsach&ma_quan={$ma_quan}&ma_loai={$loaican}";
        $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
      }
      $quan = getallquan();
      $quanz = getallquan();
      $quanzz = getallquan();
      $loaican = getallloai_can();
      $loaicanz=getallloai_can();
      require_once 'views/danhsach.php';
    }
    break;
    case 'themhopdong1':
        $dsch = canhodadang($_SESSION['id'], true);
        $dskh = getAllKhachHang($_SESSION['id']);
        $ma_can = $_GET['ma_can'] ?? null;
        $ma_tk = $_GET['ma_tk'] ?? null;
        $ho_ten = '';
        if ($ma_tk) {
          $ho_ten = khachhang($ma_tk)['ho_ten'] ?? null;
        }
        $rows = 'views/addhd.php';
        $view = 'views/thongtintk.php';
        require_once 'views/layout.php';
        break;
    case 'themhopdong':
        if (isset($_POST["canhoid"])) {
          try {
            $data = $_POST;
            $can_ho = getcan_hoByid($_POST['canhoid']);
            $loaican = maloaican($can_ho['ma_loai']);
            $khachhang = khachhang($can_ho['ma_tk']);

            $ten_can_ho = $can_ho['ten_can_ho'];
            $ma_can = $can_ho["ma_can"];
            $loai_can = $loaican['ten_can'];
            $ma_tk = $can_ho['ma_tk'];
            $vi_tri = $can_ho["dia_chi"];
            $dien_tich = $can_ho["dien_tich"];
            $gia_thue = $can_ho["gia_thue"];
            $chi_phi_khac = $_POST["chi_phi_khac"];
            $chu_nha = $khachhang["ho_ten"];
            $nguoi_thue = $_POST["nguoi_thue"];
            $do_dung = $_POST["do_dung"];
            $ngay_thue = $_POST["ngay_thue"];
            $ngay_het_han = $_POST["ngay_het_han"];
            settype($ma_can, "int");
            settype($ma_quan, "int");
            settype($gia_thue, "int");
            settype($dien_tich, "int");
            settype($ma_tk, "int");
            themhopdong($ma_tk, $ma_can, $vi_tri, $dien_tich, $ten_can_ho, $gia_thue, $chi_phi_khac, $do_dung, $nguoi_thue, $chu_nha, $loai_can, $ngay_thue, $ngay_het_han);
            
            $can_ho = getcan_hoByid($ma_can);
            $so_luong = $can_ho['so_luong'] > 0 ? $can_ho['so_luong'] - 1 : 0;
            updateSoluongCanHo($can_ho['ma_can'], $so_luong);
          } catch (\Exception $e) {
            dd($e);
          }
          header("location: ?ctrl=home&act=hop-dong&ma_tk=" . $_SESSION["id"] . "");
        }
        else {
            header("location: ?ctrl=home&act=thongtintk");
        }
        break;
    case 'edithopdong':
        $hop_dong_id = $_GET['id'];
        $dsch = canhodadang($_SESSION['id']);
        $dskh = getAllKhachHang($_SESSION['id']);
        $hop_dong = getHopDongById($hop_dong_id);
        $rows = 'views/edithd.php';
        $view = 'views/thongtintk.php';
        require_once 'views/layout.php';
      break;
    case 'save_edithopdong':
      if (isset($_POST["canhoid"])) {
        try {
          $data = $_POST;
          $can_ho = getcan_hoByid($_POST['canhoid']);
          $loaican = maloaican($can_ho['ma_loai']);
          $khachhang = khachhang($can_ho['ma_tk']);
          $id = $data['id'];
          $ten_can_ho = $can_ho['ten_can_ho'];
          $ma_can = $can_ho["ma_can"];
          $loai_can = $loaican['ten_can'];
          $ma_tk = $can_ho['ma_tk'];
          $vi_tri = $can_ho["dia_chi"];
          $dien_tich = $can_ho["dien_tich"];
          $gia_thue = $can_ho["gia_thue"];
          $chi_phi_khac = $_POST["chi_phi_khac"];
          $chu_nha = $khachhang["ho_ten"];
          $nguoi_thue = $_POST["nguoi_thue"];
          $do_dung = $_POST["do_dung"];
          $ngay_thue = $_POST["ngay_thue"];
          $ngay_het_han = $_POST["ngay_het_han"];
          settype($ma_can, "int");
          settype($ma_quan, "int");
          settype($gia_thue, "int");
          settype($dien_tich, "int");
          settype($ma_tk, "int");
          $hop_dong_before_update = getHopDongById($id);
          updateHopDong($ma_tk, $ma_can, $vi_tri, $dien_tich, $ten_can_ho, $gia_thue, $chi_phi_khac, $do_dung, $nguoi_thue, $chu_nha, $loai_can, $ngay_thue, $ngay_het_han);
          $hop_dong_after_update = getHopDongById($id);
          
          // Nếu thay đổi căn hộ
          if ($ma_can != $hop_dong_before_update['ma_can']) {
            // Update lại số lượng căn hộ thay đổi
            $can_ho = getcan_hoByid($hop_dong_after_update['ma_can']);
            $so_luong = $can_ho['so_luong'] > 0 ? $can_ho['so_luong'] - 1 : 0;
            updateSoluongCanHo($can_ho['ma_can'], $so_luong);

            // Update lại số lượng căn hộ cũ 
            $can_ho = getcan_hoByid($hop_dong_before_update['ma_can']);
            $so_luong = $can_ho['so_luong'] >= 0 ? $can_ho['so_luong'] + 1 : 0;
            updateSoluongCanHo($can_ho['ma_can'], $so_luong);
          }
        } catch (\Exception $e) {
          dd($e);
        }
        header("location: ?ctrl=home&act=hop-dong&ma_tk=" . $_SESSION["id"] . "");
      }
      else {
          header("location: ?ctrl=home&act=thongtintk");
      }
      break;
    //Tìm kiếm ở trang chủ
  case 'timkiemtheogia':

    $sapxep = $_POST["sxgia"];
    $loai_can = $_POST["loai_can"];
    // if($_GET['loai_can']==true){
    //   $loai_can = $_GET['loai_can'];
    // }
    $loai_can = trim(strip_tags($loai_can));
    $page_num = 1;
    $data = $_POST;
    if (isset($_POST["mucgia"]) && ($_POST["mucgia"] != NULL) || isset($data['quan'])) {
      $mucgia = $_POST["mucgia"];
      $maquan = $_POST['quan'] ?? null;
      if (isset($_GET['page']) == true) $page_num = $_GET['page'];
      $page_size = PATH_SITE;
      $dsch_tl = getCanho_theogia($sapxep, $loai_can, $mucgia, $maquan, $page_num, $page_size);
      $toltal_rows = Demcanhotheogia($loai_can, $mucgia);
      $basrurl = "?act=danhsach&loai_can={$loai_can}";  
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
      $quan = getallquan();
      $quanz = getallquan();
      $quanzz = getallquan();
      $loaican = getallloai_can();
    } else {

      if (isset($_GET['page']) == true) $page_num = $_GET['page'];
      $page_size = PATH_SITE;
      $dsch_tl = getCanho_theosx($sapxep, $loai_can, $page_num, $page_size);
      $toltal_rows = Demcanhotheoloai($loai_can);
      $basrurl = "?act=danhsach&loai_can={$loai_can}";
      $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
      $quan = getallquan();
      $quanz = getallquan();
      $quanzz = getallquan();
      $loaican = getallloai_can();
    }

    require_once 'views/danhsach.php';
    break;

    //timkiemall
  case 'timkiemall':
    $loai_can = $_POST["loai_can"];
    $key = $_POST["key"];
    $ma_quan = $_POST["ma_quan"];
    $mucgia = $_POST["mucgia"];
    $dien_tich = $_POST["dientich"];
    $sophongngu = $_POST["sophongngu"];
    $sophongvs = $_POST["sophongvs"];
    $huongnha = $_POST["huongnha"];
    $page_num = 1;
    if (isset($_GET['page']) == true) $page_num = $_GET['page'];
    $page_size = PATH_SITE;
    $dsch_tl = getCanho_all($loai_can, $key, $ma_quan, $mucgia, $dien_tich, $sophongngu, $sophongvs, $huongnha, $page_num, $page_size);
    $toltal_rows = Demcanhoall($loai_can, $key, $ma_quan, $mucgia, $dien_tich, $sophongngu, $sophongvs, $huongnha);
    $basrurl = "?act=danhsach&loai_can={$loai_can}";
    if (isset($ma_quan) && ($ma_quan != 0)) {
      $basrurl = "?act=danhsach&ma_quan={$ma_quan}";
    }
    elseif (isset($dien_tich) && ($dien_tich != 0)) {
      $basrurl = "?act=danhsach&dien_tich={$dien_tich}";
    }

    elseif (isset($sophongvs) && $sophongvs != 0) {
      $basrurl = "?act=danhsach&p_vs={$sophongvs}";
    }

    elseif(isset($huongnha) && ($huongnha != 0)){
      $basrurl = "?act=danhsach&h_n={$huongnha}";
    }

    elseif(isset($sophongngu) && $sophongngu != 0){
      $basrurl = "?act=danhsach&p_ngu={$sophongngu}";
    }elseif(isset($mucgia) && $mucgia != 0){
      $basrurl = "?act=danhsach&price={$mucgia}";
    }else{
      $basrurl = "?act=danhsach&loai_can={$loai_can}";
    }
    $links = taolinks($basrurl, $page_num, $page_size, $toltal_rows);
    $quan = getallquan();
    $quanz = getallquan();
    $quanzz = getallquan();
    $quanzzz = getallquan();
    $loaican = getallloai_can();
    $loaicanz = getallloai_can();
    require_once 'views/danhsach.php';
    break;

  case 'dangkytim';
    if (isset($_POST["dangky"])) {
      $ho_ten = $_POST["ho_ten"];
      $email = $_POST["email"];
      $sdt = $_POST["sdt"];
      themdangky($ho_ten, $email, $sdt);
      header("location: ?ctrl=home&act=index");
    }
    break;

  case 'thanhtoan':
    $_SESSION["ma_can"] = $_GET["ma_can"];
    $kh = khachhang($_SESSION['id']);
    $currency = $kh->currency - 10000;
    $currency = $_POST["currency"];
    var_dump($kh->currency);
      require_once "views/thanhtoan.php";
    break;

    //update lịch dat
  case 'updatedl':
    $ma_dat = $_GET["ma_dat"];
    $trang_thai = 1;
    $trang_thai_lich = 1;
    updatedl($ma_dat, $trang_thai, $trang_thai_lich);
    header("location: ?ctrl=home&act=ds-ld&ma_tk=" . $_SESSION['id'] . "");
    break;
    case 'doilich':
        $ma_tk = $_GET["ma_tk"] ?? null;
        $ma_dat = $_GET['ma_dat'] ?? null;
        $dl = datlich($ma_tk);
        if (isset($_GET['canhoid']) == true) {
            $idcanho = getcan_hoByid($_GET['canhoid']);
            require_once 'views/doilich.php';
        }
        break;
    case 'henlailich':
            if ($_POST["ngay_xem"] != "") {
                if (isset($_POST["dat1"])) {
                    $ma_tk = $_POST['ma_tk'];
                    $ma_dat = $_POST['ma_dat'];
                    $gio_xem =$_POST['gio_xem'];
                    $ngay_xem = $_POST["ngay_xem"];
                    $ghi_chu = $_POST["ghi_chu"];
                    $trang_thai_lich = 1;
                    doilich($gio_xem,$ngay_xem,$trang_thai_lich,$ma_dat, $ghi_chu);
                    header("location: " . "?act=lichsu&ma_tk=$ma_tk");
                    break;
                }
            } else {
                require_once "views/layout.php";
            }
break;
    case 'huydatlich':
    $ma_dat = $_GET["ma_dat"];
    $huylich = getthongbao($ma_tk);
    $trang_thai = 0;
    $trang_thai_lich = 0;
    updatedl($ma_dat,$trang_thai, $trang_thai_lich);
    header("location: ?ctrl=home&act=lichsu&ma_tk=" . $_SESSION['id'] . "");
    break;

    //Quên mật khẩu
  case 'quenmk':
    $row = "views/quenmk.php";
    require_once "views/login.php";
    break;

    //đổi mật khẩu mới

  case 'quenmk_':
    if (isset($_POST['guiemail'])) {
      if (isset($_POST["email"]) && ($_POST["email"] != "")) {
        //  elseif (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        //   $erro['email'] = 'Email không hợp lệ !';
        // } 
        if (checktkemail($_POST["email"]) == true) {
          $email = $_POST["email"];
          $messagequen = "Gửi hành công !";
          // $random = substr(md5('adhwe$#&^'), 12);
          // $idUser = Luuthongtintk($ho_ten, $user,md5($pass) , $email, $random);
          require_once "PHPMailer-master/src/PHPMailer.php";
          require_once "PHPMailer-master/src/SMTP.php";
          $mail = new PHPMailer\PHPMailer\PHPMailer(true);  //true: enables exceptions
          try {
            $mail->SMTPDebug = 0;  // Enable verbose debug output
            $mail->isSMTP();
            $mail->CharSet  = "utf-8";
            $mail->Host = 'smtp.gmail.com';  //SMTP servers
            $mail->SMTPAuth = true; // Enable authentication
            $mail->Username = 'ngoanhquoc5@gmail.com';  // SMTP username
            $mail->Password = 'quoc201201';   // SMTP password
            $mail->SMTPSecure = 'ssl';  // encryption TLS/SSL 
            $mail->Port = 465;  // port to connect to                
            $mail->setFrom('ngoanhquoc5@gmail.com', 'goldenhome');
            $mail->addAddress($email); //mail và tên người nhận       
            $mail->isHTML(true);  // Set email format to HTML
            $mail->Subject = 'Xác nhận tài khoản';
            $linkKH = "<a href='dangtinabc.com/site/?ctrl=home&act=nhapmkmoi&email=" . $email . "'>Nhấp vào đây</a>";
            // $linKH = sprintf($linkKH, $idUser);
            $mail->Body = "<h4>Chào mừng bạn trở lại</h4> Click vào đây để xác nhận tài khoản: " . $linkKH;
            $mail->send();
            $messagequen = 'Cập nhật mật khẩu !';
          } catch (Exception $e) {
            echo 'Mail không gửi được. Lỗi: ', $mail->ErrorInfo;
          }
          require_once 'views/login.php';
        } else {
          $erro['email'] = 'Không có tài khoản này !';
          $row = 'views/quenmk.php';
          require_once 'views/login.php';
        }
      }
    }
    require_once 'views/login.php';
    break;

  case 'nhapmkmoi':
    $mke = "views/nhapmkmoi.php";
    $row = "views/quenmk.php";
    require_once "views/login.php";
    break;

  case 'doipassemail':
    if (isset($_POST["gui"])) {
      $email = $_GET["email"];
      $pass = $_POST["pass"];
      $repass = $_POST["repass"];
      if ($pass != "" && $pass == $repass) {
        updatematkhau($email, md5($pass));
        $messagethanhcong = "Đổi mật khẩu thành công";
        require_once "views/login.php";
      } else {
        $messagethatbai = "Đổi mật khẩu thất bại";
        $mke = "views/nhapmkmoi.php";
        $row = "views/quenmk.php";
        require_once "views/login.php";
      }
    }

    break;
    case 'thue';
      $ma_dat = $_GET['ma_dat'];
      $action = $_GET['action'];
      $dat_lich = getDatlichByMaDat($ma_dat);
      $can_ho = getcan_hoByid($dat_lich['ma_can']);
      
      $trang_thai = 1;
      $so_luong = $can_ho['so_luong'] > 0 ? $can_ho['so_luong'] - 1 : 0;
      $trang_thai_lich = 2;

      if ($action != 'cho-thue') {
        $so_luong = $can_ho['so_luong'] >= 0 ? $can_ho['so_luong'] + 1 : 0;
        $trang_thai_lich = 1;
      }
      updateSoluongCanHo($can_ho['ma_can'], $so_luong);
      updatedl($ma_dat,$trang_thai, $trang_thai_lich);
      header("location: ?ctrl=home&act=ds-ld&ma_tk=" . $_SESSION['id'] . "");
    break;
    case 'delete_hop_dong':
      $id = $_GET['id'];
      $ma_can = $_GET['ma_can'];
      $ma_tk = $_SESSION["id"];
      xoaHopDong($id);
      $can_ho = getcan_hoByid($ma_can);
      $so_luong = $can_ho['so_luong'] >= 0 ? $can_ho['so_luong'] + 1 : 0;
      updateSoluongCanHo($can_ho['ma_can'], $so_luong);
      header("location: " . "?act=hop-dong&ma_tk=$ma_tk");
      break;
    case 'get_can_ho':
      if (isset($_GET['canhoid']) == true) {
        $can_ho = getcan_hoByid($_GET['canhoid']);
        $loaican = maloaican($can_ho['ma_loai']);
        $khachhang = khachhang($can_ho['ma_tk']);
        require_once 'views/can_ho-preview.php';
      }
      break;
    case 'subscribe';
        $email = $_POST['email'] ?? null;
        if ($email) {
          addSubscribe($email);
        }
      $res = [
        'success' => true,
      ];

      echo json_encode($res);
      break;
}
?>