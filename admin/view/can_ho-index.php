<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

</body>

</html>

<div class="right__title">Bảng loại căn hộ</div>
<div class="right__table">
    <p class="right__tableTitle">Danh sách loại căn hộ</p>
    <p class="right__tableTitle">Số căn hộ đả duyệt:  <?=$canhohien["soluong"]?> (căn hộ)</p>
    <p class="right__tableTitle">Số căn hộ chưa duyệt: <?=$canhoan["soluong"]?> (căn hộ)</p>
    <div class="right__tableWrapper">
        <table>
            <thead>
                <tr>
                    <th>STT</th>

                    <th style="text-align: center; width: 25%;">Thông tin chi tiết căn hộ</th>

                    <th style="text-align: center; width: 30%;">Vị trí</th>

                    <th style="text-align: center; width: 30%;">Nội thất và giá thuê</th>

                    <th style="text-align: center; width: 12%;">Trạng thái</th>

                    <th>Xóa</th>

                </tr>
            </thead>
            <tbody>
                <?php foreach ($ds as $stt => $ds) {
                    $quan = getquanbyid($ds["ma_quan"]);
                    $loaican = getloaicanbyid($ds["ma_loai"]);
                    $tentk = getkhachhangByID($ds["ma_tk"]);
                    $phuong=getphuongid($ds["id"]);
                    $stt += 1;
                ?>
                    <tr>
                        <!-- Số thứ tự -->
                        <td><?= $stt ?></td>
                        <!-- Chi tiết căn hộ -->
                        <td>
                            <p style="font-weight: bold;"><?= $ds["ten_can_ho"] ?></p>
                            <p>Loại căn: <?= $loaican["ten_can"] ?></p>
                            <p>Quận/Huyện: <?php echo $quan["ten_quan"] ?></p>
                            <p>Phường: <?php echo $phuong["phuong"]?></p>
                            <p>Diện tích: <?= $ds["dien_tich"] ?> m2</p>
                            <p>Năm xây dựng: <?= $ds["nam_xd"] ?? null ?></p>
                            <p><?php if ($ds["ma_loai"] > 0) echo "Tầng: " . $ds["tang"] . "";
                                else echo ""; ?></p>
                            <p>Người đăng: <?php echo $tentk["ten_tk"] ?></p>
                        </td>
                        <!-- Vị Trí -->
                        <td>
                            <p>Địa chỉ: <?= $ds["dia_chi"] ?></p>
                            <p>Hướng nhà: <?php if($ds["huong_nha"] == 1) echo "Đông"; 
                            elseif($ds["huong_nha"] == 2) echo "Tây";
                            elseif($ds["huong_nha"] == 3) echo "Nam";
                            elseif($ds["huong_nha"] == 4) echo "Bắc";
                            elseif($ds["huong_nha"] == 5) echo "Tây Bắc";
                            elseif($ds["huong_nha"] == 6) echo "Tây Nam";
                            elseif($ds["huong_nha"] == 7) echo "Đông Bắc";
                            elseif($ds["huong_nha"] == 8) echo "Đông Nam";
                            ?></p>
                            <p style="text-align: left; font-weight: bold;">Tiện ích:</p>
                            <p><?= nl2br($ds["tien_ich"]) ?></p>
                        </td>
                        <!-- Phòng -->
                        <td>
                            <p>Số phòng ngủ: <?= $ds["so_phong_ngu"] ?></p>
                            <p>Số phòng vệ sinh: <?= $ds["so_phong_vs"] ?></p>
                            <p><img src="../uploaded/<?php if ($ds["hinh"] == "") echo "no-img.png";
                                                    else echo $ds["hinh"] ?>" alt="">
                                <img src="../uploaded/<?php if ($ds["hinha"] == "") echo "no-img.png";
                                                        else echo $ds["hinha"] ?>" alt="">
                                <img src="../uploaded/<?php if ($ds["hinhb"] == "") echo "no-img.png";
                                                        else echo $ds["hinhb"] ?>" alt="">
                                <img src="../uploaded/<?php if ($ds["hinhc"] == "") echo "no-img.png";
                                                        else echo $ds["hinhc"] ?>" alt=""></p>
                            <p><?= number_format($ds["gia_thue"] . "") ?> VND</p>
                            <p style="text-align: left; font-weight: bold;">Chi phí khác: </p>
                            <p><?= $ds["chi_phi_khac"] ?></p>
                        </td>
                        <!-- Ghi chú -->
                        <td>
                            <p style="font-weight: bold;">
                                <?= $ds["so_luong"] > 0 ? 'Còn phòng' : 'Hết phòng' ?>
                            </p>
                            <p>Đang: <?php if ($ds["an_hien"] == 0) echo "Ẩn";
                                        else echo "Hiện" ?></p>
                            <?php if ($ds["an_hien"] == 0) {
                            ?>
                                <p><a href="/admin/?ctrl=can_ho&act=duyetbai&ma_can=<?= $ds['ma_can'] ?>"><button style="background-color: orangered; color: white; padding: 2px 5px; border-radius: 10%;">Duyệt bài</button></a></p>
                            <?php
                            } else {
                                ?>
                                <p style="color: orangered;">Đã duyệt bài</p>
                                <p><a href="/admin/?ctrl=can_ho&act=anbai&ma_can=<?= $ds['ma_can'] ?>"><button style="background-color: green; color: white; padding: 2px 5px; border-radius: 10%;">Ẩn bài đăng</button></a></p>

                                <?php
                            } ?>

                            <?php if ($_SESSION["id"] == $ds["ma_tk"]) {
                            ?>
                                <p><a href="/admin/?ctrl=can_ho&act=edit&ma_can=<?= $ds['ma_can'] ?>" style="color: #455A64;">Sửa<i class="fas fa-edit"></i></a></p>
                            <?php
                            } ?>
                        </td>
                        <td>

                            <a href="javascript:Delete('?ctrl=can_ho&act=delete&ma_can=<?= $ds['ma_can'] ?>')" style="color: #455A64;"><i class="fas fa-trash-alt"></i></a>
                            
                        </td>
                    </tr>
                <?php } ?>
            </tbody>

        </table>

    </div>
</div>