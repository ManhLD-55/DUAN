<div class="footer">
        <div class="box4 b1">
            <img src="../uploaded/logo.png" alt="">
            <p>Golden công ty dịch vụ BĐS hiện đại, cung cấp nguồn bất động sản an toàn, 100% được thẩm định pháp lý cho người dùng có nhu cầu mua, bán và thuê BĐS.</p>
            <p>Tầng 4, Tòa nhà Flemington, 182 Lê Đại Hành, Phường 15, Quận 11, TP. Hồ Chí Minh</p>
        </div>
        <div class="box4 b2">
            <div class="tieude4">
                <h4>Danh sách các quận</h4>
            </div>
            <?php if (isset($quanzz)): ?>
            <div class="textquan">
                <div class="quan1 l1">
                    <?php foreach ($quanzz as $stt => $q) {
                        $stt += 1; ?>
                        <p><a href="?ctrl=home&act=danhsach&ma_quan=<?= $q["ma_quan"]?>"><?= $q["ten_quan"]?></a></p>

                        <?php
                        if ($stt == 10) {
                        ?>
                </div>
                <div class="quan1 l2">
            <?php
                        }
                    } ?>

            <!-- </div>
                <div class="quan1 l2"> -->

                </div>
            </div>
            <?php endif; ?>
        </div>
        <div class="box4">
            <form form-action="?ctrl=home&act=subscribe" class="subscribe" method="POST">
                <h4>Đăng ký để biết thêm thông tin từ Golden</h4> <br>
                <input type="text" id="email" name="email" required placeholder="Địa chỉ email" style="font-size: 11pt;">
                <input class="ip2" id="subscribe" type="button" value="Đăng ký">
            </form>
        </div>
    </div>
    <!-- Footer Golden Home -->

    <div class="divcuoi">
        <span> 2020 © Bản quyền GoldenHome. Đã đăng ký Bản quyền.</span>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js"> </script>
    <script>
        $('.subscribe').keydown(function(event){
            if(event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });
        $('#subscribe').on('click', function() {
            var email = $('#email').val();
            var action = $(this).closest('form').attr('form-action');
            console.log(email);
            $.ajax({
                url: action,
                method: 'POST',
                data: {
                    email: email
                },
                success: function(xhr) {
                    $('#email').val('');
                    swal('Bạn đã đăng ký nhận tin thành công!');
                }
            });
        })
    </script>