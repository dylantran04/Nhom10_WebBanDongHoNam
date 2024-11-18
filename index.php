<?php
ob_start();
session_start();
include 'model/pdo.php';
include 'model/sanpham.php';
include 'model/danhmuc.php';
include 'model/taikhoan.php';
if (isset($_SESSION['iduser'])) {
    $tk =  selectone_tk($_SESSION['iduser']);
}
include 'view/header.php';
include 'model/validate_form.php';
include 'model/validate_pass.php';




$loadstar = loadstar();
$load_sp_luot_xem = load_sp_luotxem();
// $list_sp_home = loadAll_sanpham();
$list_dm = loadAll_danhmuc();
$load_sp_star = load_sp_star();

if (isset($_GET['act']) && $_GET['act'] != '') {
    $act = $_GET['act'];
    switch ($act) {
        case 'dangxuat':
            session_unset();
            header('location:index.php');
            break;
        case 'quenmk':
            if (isset($_POST['guiemail'])) {
                $email = $_POST['email'];
                $sendMailMess = sendMail($email);
            }
            include_once 'view/taikhoan/quenmk.php';
            break;
        case 'ctsp':
            $loadone_sp = loadAll_sanpham("", $_GET['idsp']);
            $load_sp_cl = load_sp_cung_loai($_GET['idsp'], $_GET['iddm']);
            // $starss =  thong_ke_star($_GET['idsp']);
            // var_dump($starss);
            include_once 'view/ctsp.php';
            break;
        
        case 'listsp':
            if (isset($_POST['submit']) && $_POST['submit']) {
                // từ khóa
                if (isset($_POST['kyw'])) {
                    $key = $_POST['kyw'];
                    $_SESSION['key'] = $key;
                } else {
                    $key = "";
                }
                //gia
                if (isset($_POST['gia'])) {
                    $gia = $_POST['gia'];
                } else {
                    $gia = "";
                }
                //Kieu may
                if (isset($_POST['kieumay'])) {
                    $kieumay = $_POST['kieumay'];
                } else {
                    $kieumay = "";
                }
                // xuat xu
                if (isset($_POST['xuatxu'])) {
                    $xuatxu = $_POST['xuatxu'];
                } else {
                    $xuatxu = "";
                }
            } else {
                $key = $gia = $kieumay = $xuatxu = "";
                unset($_SESSION['key']);
            }
            // id danh mục
            if (isset($_GET['iddm']) && $_GET['iddm'] > 0) {
                $iddm = $_GET['iddm'];
            } else {
                $iddm = 0;
            }
            $listsp_dm = listsp_dm($key, $iddm, $gia, $kieumay, $xuatxu);
            include_once 'view/listsp.php';
            break;
        case 'thanhtoantc':
            include 'view/cart/thanhtoantc.php';
            break;
        case 'update_trangthai':
            update_trangthai($_GET['id_dh']);
            header('Location: ?act=mytaikhoan');
            break;

        case 'mytaikhoan':
            if (isset($_POST['btn_tt']) && $_POST['btn_tt']) {
                $user = $_POST['user'];
                $email = $_POST['email'];
                $sdt = $_POST['sdt'];
                $address = $_POST['diachi'];
                $err = validate_form($user, $email, $sdt, $address);
                if (empty($err)) {
                    update_taikhoan($_SESSION['iduser'], $user, $email, $sdt, $address);
                    header("Location: index.php?act=mytaikhoan");
                }
            }
            if (isset($_POST['btn_update_pass']) && $_POST['btn_update_pass']) {
                $pass = $_POST['pass'];
                $captcha = $_POST['captcha'];
                $ma = $_POST['ma'];
                $confim = $_POST['confim'];
                $pass2 = $_POST['pass2'];
                $err  = check_update_pass($pass, $ma, $captcha, $confim, $pass2);
                if (empty($err)) {
                    update_mk($_SESSION['iduser'], $pass2);
                    echo "<script>alert('Đổi mật khẩu thành công!')</script>";
                }
            }

            $dh = load_donhang_user($_SESSION['iduser']);
            include 'view/taikhoan/mytaikhoan.php';
            break;
    }
} else {
    include 'view/home.php';
}
include 'view/footer.php';
ob_end_flush();
