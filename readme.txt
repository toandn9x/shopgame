Trong wiki này, mình sẽ hướng dẫn các bạn cài đặt và sử dụng Shopgame.

Yêu cầu hệ thống:
Để cài đặt và sử dụng được code thì server/hosting của bạn phải có đủ các yêu cầu sau:

Phiên bản PHP >= 7.4
Apache24, đã bật mod_rewrite
Tiện ích mở rộng pdo_mysql, php-curl và php_pdo.
Cài đặt
Cài bằng Composer
Nếu hosting/server của bạn hỗ trợ truy cập SSH/Command line thì chạy các lệnh sau:

composer create-project datlechin/shopgame --stability=dev
Sau đó các bạn trỏ vào dự án shopgame vừa mới tạo bằng lệnh cd shopgame.

Khi trỏ vào dự án xong thì chạy lệnh:

composer install
Cài thủ công
Nếu bạn muốn cài bằng tệp zip thì bạn vẫn phải cần Composer để load các file và tải thư viện đăng nhập Facebook.

Tải file zip của shopgame tại link github này, sau đó nhấn vào Code và nhấn Download ZIP
Screenshot from 2022-04-03 20-30-08

Giải nén file zip.
Chạy lệnh composer install.
Hướng dẫn sử dụng
Sau khi bạn đã cài đặt và chạy lệnh composer install xong thì bạn tiếp cấu hình thông tin cơ bản cho trang web của bạn có thể hoạt động.

Cấu hình database tại app/config.php
const DB_HOST = 'localhost'; // thường là localhost (hoặc 127.0.0.1)
const DB_USER = 'root'; // user database
const DB_PASS = ''; // mật khẩu database
const DB_NAME = 'shop_game'; // tên database
Tiếp tục import file database.sql vào database của bạn.
Khi bạn đã cấu hình database và import sql vào database thì bây giờ trang web của bạn đã hoạt động.

Tạo tài khoản Admin
Để tạo một tài khoản admin để quản trị trang web, làm theo các bước sau:
Đăng ký một tài khoản trên trang web.
Vào database, trong bảng users, chỉnh sửa giá trị cột role thành admin cho người dùng bạn muốn set quyền admin.
Truy cập vào bảng quản trị bằng đường link: https://shopgame/admin (trong đó shopgame là tên miền của bạn)