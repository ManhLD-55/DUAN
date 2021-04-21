<div class="dangtin" style="margin-top:70px">
    <h3 style="font-family: sans-serif;">Thêm hợp đồng</h3>
    <form onsubmit="return validateform()" name="myform" action="?ctrl=home&act=save_edithopdong&ma_tk=<?= $_SESSION["id"] ?>" class="formdangtin" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $hop_dong['id'] ?>">
        <div class="tt-right-row">
            <label for="">Chọn căn hộ</label>
            <select name="canhoid" id="can_ho">
                <?php foreach ($dsch as $ch) : ?>
                    <?php $seleced = $ch['ma_can'] == $hop_dong['ma_can'] ? 'selected' : ''; ?>
                    <option <?= $seleced ?> value="<?= $ch['ma_can'] ?>"><?= $ch['ten_can_ho'] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="preview">

        </div>
        <div class="tt-right-row">
            <label for="">Đồ dùng</label>
            <input type="text" name="do_dung" id="" value="<?= $hop_dong['do_dung'] ?>">
        </div>
        <div class="tt-right-row">
            <label for="">Người thuê</label>
            <select name="nguoi_thue">
                <?php foreach ($dskh as $kh) : ?>
                    <?php $seleced = $kh['ho_ten'] == $hop_dong['nguoi_thue'] ? 'selected' : ''; ?>
                    <option <?= $seleced ?> value="<?= $kh['ho_ten'] ?>"><?= $kh['ho_ten'] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="tt-right-row">
        <div class="tt-right-row">
            <label for="">Chi phí khác</label>
            <input type="text" name="chi_phi_khac" id="" value="<?= $hop_dong['chi_phi_khac'] ?>">
        </div>
        <div class="tt-right-row">
            <label for="">Ngày thuê</label>
            <input type="date" name="ngay_thue" id="" value="<?= $hop_dong['ngay_thue'] ?>" required>
        </div>
        <div class="tt-right-row">
            <label for="">Ngày hết hạn</label>
            <input type="date" name="ngay_het_han" id="" value="<?= $hop_dong['ngay_het_han'] ?>" required>
        </div>


        <button class="btn-tk">Lưu</button>
    </form>
</div>

<script>
    $(document).ready(function() {
        $('#can_ho').on('change', function() {
            var id = $(this).val();
            $.get("?ctrl=home&act=get_can_ho", {'canhoid': id},
                function(data) {
                    $('.preview').html(data);
                });
        });
        $('#can_ho').trigger('change');
    });
</script>