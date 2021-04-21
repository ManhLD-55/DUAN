<?php if ($kh['vai_tro'] == 1 || $kh['vai_tro'] == 2) : ?>
    <div class="ch-dd">
        <h3 style="font-weight: bold; margin-bottom: 30px; margin-top: 50px;">
            Danh sách khách hàng đặt xem căn hộ của bạn
        </h3>
        <table class="table table-bordered" style="padding: 0px 20px;">
            <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Tên khách hàng</th>
                    <th scope="col" style="width: 30%;">Căn hộ</th>
                    <th scope="col">Ngày xem</th>
                    <th scope="col">Ngày đặt</th>
                    <th scope="col">Ghi chú</th>
                    <th scope="col">Thông báo lịch</th>
                    <th scope="col">Tình trạng</th>
                    <th scope="col">Duyệt</th>
                    <th scope="col">Xóa</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($dsld as $stt => $ds) :
                    $stt += 1;
                ?>
                    <tr>
                        <th scope="row"><?= $stt ?></th>
                        <td>
                            <p><?= $ds["ten_nguoi_dat"] ?></p>
                            <p>SĐT: <?= $ds['sodt'] ?></p>
                            <p><strong>Ghi chú :</strong><?= $ds['ghi_chu'] ?></p>
                        </td>
                        <td>
                            <span style="width: 55%; float: left;"> <?= $ds['ten_can_ho'] ?></span>
                            <?php if (date("Y-m-d") <= date_format(date_create($ds['ngay_dat']), "Y-m-d") and (date("h-i") <= $ds['gio_xem'])) : ?>
                                <span class='neww' style='width: 25%'>Sắp tới</span>
                            <?php endif; ?>
                        </td>
                        <td>
                            <div>
                                Lúc: <?= $ds['gio_xem'] ?>
                            </div>
                            <div>
                                Ngày:<?= date_format(date_create($ds['ngay_xem']), "d/m/yy") ?>
                            </div>
                        </td>
                        <td><?= date_format(date_create($ds['ngay_dat']), "d/m/yy") ?></td>
                        <td>
                            <?php if (date("Y-m-d") >= date_format(date_create($ds['ngay_xem']), "Y-m-d")) {
                                echo "<span class='hethang'>Đã hết hạn</span>";
                            } else {
                                echo "Chưa xem nhà";
                            } ?>
                        </td>
                        <td>
                            <?php
                            if ($ds['trang_thai_lich'] != 0) {
                                echo "<p>Khách chờ xem nhà</p>";
                            } else {
                                echo "<p>Khách đã hủy lịch xem</p> ";
                            }
                            ?>
                        </td>
                        <td width="100">
                            <?php if($ds['trang_thai'] == 1 && date("Y-m-d") <= date_format(date_create($ds['ngay_xem']), "Y-m-d")): ?>
                                <a href="?act=themhopdong1&ma_can=<?= $ds["ma_can"] ?>&ma_tk=<?=$ds['ma_tk']?>">Cho thuê</a>
                                <!-- <a href="?act=thue&action=cho-thue&ma_dat=<?= $ds["ma_dat"] ?>">Cho thuê</a> -->
                            <?php elseif($ds['trang_thai_lich'] == 2): ?>
                                <p>Đã cho thuê</p>
                                <!-- <a href="?act=thue&action=huy-thue&ma_dat=<?= $ds["ma_dat"] ?>">Hủy thuê</a> -->
                            <?php endif; ?>
                        </td>
                        <td>
                            <?php if ($ds["ngay_xem"] > date("Y-m-d")) : ?>
                                <?php if ($ds['trang_thai'] != 0) : ?>
                                    <i style="margin-left: 10px; color:green" class="fas fa-check"></i>
                                <?php elseif ($ds['trang_thai_lich'] == 1) : ?>
                                    <a href="?act=updatedl&ma_dat=<?= $ds["ma_dat"] ?>" style="margin-left: 10px"><i class="fas fa-check-square"></i></a>
                                <?php endif; ?>
                            <?php endif; ?>
                        </td>
                        <td><a href="?act=deletedatlich&ma_dat=<?= $ds["ma_dat"] ?>" style="margin-left: 10px"><i class="fas fa-trash"></i></a></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
<?php endif; ?>
<?php if ($kh['vai_tro'] == 0) : ?>
    <div class="ch-dd">
        <h3 style="font-weight: bold; margin-bottom: 20px; margin-top: 50px;">Hãy liên hệ với chúng tôi để thành chủ trọ và đăng bài</h3>
    </div>
<?php endif; ?>