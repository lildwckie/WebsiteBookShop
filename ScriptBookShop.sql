-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 09:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testcartandorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `name`, `address`, `mobile`, `user_id`, `deleted`) VALUES
(1, 'User 1', '125 Cầu Giấy, Hà Nội', '0338121282', 1, b'0'),
(2, 'User 2', '456 Trần Duy Hưng, Hà Nội', '0968121252', 2, b'0'),
(3, 'User 3', '789 Láng, Hà Nội', '0335583282', 3, b'0'),
(4, 'User 4', '012 Phạm Hùng, Hà Nội', '0358121192', 4, b'0'),
(5, 'User 5', '345 Bưởi, Hà Nội', '0312345282', 5, b'0'),
(33, '', '3, a, a, a, a', '0123456789', 1, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `deleted`) VALUES
(1, 'admin', 'admin123', 'ducp3352@gmail.com', b'0'),
(2, 'admin2', 'admin456', NULL, b'0'),
(3, 'admin3', 'admin789', NULL, b'0'),
(4, 'admin4', 'admin012', NULL, b'0'),
(5, 'admin5', 'admin345', NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` float NOT NULL,
  `year` int(11) NOT NULL,
  `episode` int(11) NOT NULL,
  `num_pages` int(11) NOT NULL,
  `num_sell` int(11) DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `ISBN`, `book_name`, `img`, `author`, `detail`, `price`, `year`, `episode`, `num_pages`, `num_sell`, `category_id`, `publisher_id`, `deleted`) VALUES
(1, '8935086854495', 'Hành Trình Về Phương Đông (Tái Bản 2021)', '8935086854495.jpg', 'Baird T Spalding', '<p>Hành Trình Về Phương Đông, một trong những tác phẩm đương đại hay và độc đáo nhất về văn hóa phương Đông vừa tái ngộ bạn đọc trong một diện mạo hoàn toàn mới, sang trọng và ấn tượng. Đây là ấn bản có lượng phát hành ấn tượng, hơn 40.000 bản tại Việt Nam chỉ trong vài năm trở lại đây.\r\n\r\nHành Trình Về Phương Đông kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. Suốt hai năm trời rong ruổi khắp các đền chùa Ấn Độ, diện kiến nhiều pháp thuật, nhiều cảnh mê tín dị đoan, thậm chí lừa đào… của nhiều pháp sư, đạo sĩ… họ được tiếp xúc với những vị chân tu thông thái sống ẩn dật ở thị trấn hay trên rặng Tuyết Sơn. Nhờ thế, họ được chứng kiến, trải nghiệm, hiểu biết sâu sắc về các khoa học cổ xức và bí truyền của văn hóa Ấn Độ như yoga, thiền định, thuật chiêm tinh, các phép dưỡng sinh và chữa bệnh, những kiến thức về nhân duyên, nghiệp báo, luật nhân quả, cõi sống và cõi chết…</p><p>\r\n\r\nCuốn sách là một phần trong bộ hồi ký nổi tiếng của giáo sư Blair T. Spalding (1857 - 1953), “Life and Teaching of the Masters of the Far East” (xuất bản năm 1953). Bộ sách có tất cả sáu quyển, ghi nhận đầy đủ về cuộc hành trình gay go nhưng lý thú và tràn đầy sự huyền bí ở Ấn Độ, Tây Tạng, Trung Hoa và Ba Tư. Ba quyển đầu ghi lại những cuộc thám hiểm của phái đoàn gồm các nhà khoa học hàng đầu của Hoàng gia Anh đi từ Anh quốc sang Ấn Độ, các cuộc gặp gỡ giữa phái đoàn và những vị thầy tâm linh sống ở châu Á và dãy Hy Mã Lạp Sơn. Ba quyển sau là những ghi nhận riêng của giáo sư Spalding về các cuộc hành trình, sự trao đổi kiến thức giữa phái đoàn và các vị thầy tâm linh, cùng bản tường trình của phái đoàn đã đưa đến những cuộc tranh luận sôi nổi. Cuối cùng thì ba người trong phái đoàn đã trở lại Ấn Độ sống đời ẩn sĩ.</p><p>\r\nXuất bản lần đầu tiên tại NXB Adyar Ấn Độ năm 1924, Hành Trình Về Phương Đông đã gây ra một dư luận tranh cãi không chỉ ở nước Anh mà ở cả châu Âu và Mỹ. Sau đó, vì tự ái và sĩ diện, chính phủ Anh cấm phát hành cuốn sách này ở Anh Quốc, rồi chiến tranh thế giới lần thứ II xảy ra, cuốn sách đã không được tái bản ở bất kỳ NXB nào khác trên thế giới. Mãi đến năm 2009, NXB Booksurge Hoa Kỳ đã tìm mọi cách liên lạc với dịch giả Nguyên Phong để xin phép chuyển ngữ cuốn sách tiếng Việt này. </p><p> \r\n\r\nCó thể nói, Hành Trình Về Phương Đông là một trong những cuốn sách có số phận khá ly kỳ, một phần vì dịch giả của nó cũng bí ẩn không kém. Không xuất hiện trên truyền thông, mà chỉ sống ẩn danh nên có rất nhiều người không biết về Nguyên Phong. Và đó chính là bút danh của Giáo sư John Vu (tên thật là Vũ Văn Du). Ông là tác giả, dịch giả nổi tiếng của các tác phẩm về văn học, tâm linh phương Đông, về giáo dục, và công nghệ. Ông đã chuyển thể và phóng tác rất thành công nhiều tác phẩm của các học giả phương Tây sau quá trình tìm hiểu và khám phá các giá trị văn hóa phương Đông. Trong số đó tác phẩm phóng tác nổi tiếng nhất là Hành Trình Về Phương Đông; ngoài ra, tại Việt Nam, First News đã xuất bản nhiều tác phẩm phóng tác nổi tiếng của dịch giả Nguyên Phong như: Ngọc sáng trong hoa sen, Bên rặng Tuyết Sơn, Hoa trôi trên sóng nước, Minh triết trong đời sống, Đường mây qua xứ tuyết…</p>', 100000, 2021, 0, 256, 0, 1, 1, b'0'),
(2, '8935325009006', 'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói', '8935325009006.jpg', 'Wladislaw Jachtchenko', '<p>Đây là quyển sách chứa đựng đáp án mà bạn mong muốn. Thuật thao túng sẽ giúp bạn thuần thục các kỹ năng thuộc bộ môn “nghệ thuật” làm chủ cảm xúc, làm chủ vận mệnh, điều chỉnh tâm lý và đạt được thứ bạn muốn một cách tinh vi: thao túng tâm lý người đối diện, khiến họ hành động theo hướng ta mong đợi. Không những vậy, quyển sách còn giúp bạn nhìn nhận lại về định nghĩa thao túng, những tốt-xấu ẩn giấu đằng sau và giải đáp vấn đề đạo đức con người mà bạn luôn trăn trở khi thực hiện những hành vi này. Bật mí, con người khi vừa sinh ra đã làm một thao tác thao túng tâm lý người khác rồi đấy!</p><p>\r\n\r\nCó thể bạn chưa biết, bạn đã và đang thao túng người khác hoặc bị người khác thao túng thông qua cử chỉ ngôn hành mỗi ngày, như-một-trò-đùa.</p><p>\r\n\r\nCó thể bạn chưa biết, nạn nhân bị thao túng chưa chắc đã rơi vào tình thế bất lợi, nhưng rơi vào tình thế bất lợi chắc chắn đã bị thao túng.</p><p>\r\n\r\nCó thể bạn chưa biết, người có đạo đức chắc chắn không thao túng người khác, nhưng kẻ thao túng người khác chưa chắc đã vô đạo đức.</p><p>\r\n\r\nVới 10 kỹ năng và 37 thủ thuật, Thuật thao túng sẽ giúp bạn nhận ra và thoát khỏi những suy nghĩ xấu xa nơi tiềm thức của chính mình, đồng thời vạch trần góc tối ẩn giấu sau mỗi câu nói của đối phương, đưa những chiêu trò thao túng ấy ra ánh sáng để mọi người không lần nữa rơi vào cạm bẫy. Hơn cả, quyển sách này sẽ dẫn lối bạn trở thành một “nghệ nhân” thao túng có đạo đức.\r\n</p><p>\r\nVề tác giả\r\n\r\nTác giả người Đức Wladislaw Jachtchenko - diễn giả hàng đầu châu Âu, người sáng lập Học viện Argumentorik giảng dạy về giao tiếp - dạy bạn cách giao tiếp phù hợp để đạt được điều bạn muốn</p>', 111200, 2022, 0, 344, 0, 2, 1, b'0'),
(3, '8934974190158', 'Không Có Sông Quá Dài - Cẩm Nang Dành Cho Những Người Khởi Nghiệp', '8934974190158.jpg', 'Nhiều Tác Giả', '<p>Sách có thể xem là cẩm nang quý giá của những người khởi nghiệp, với những việc phải làm và những điều nên tránh. Thông điệp của sách: Khởi nghiệp là một quá trình gian khó. Nhưng không có dòng sông nào là quá dài, thế nên bạn đừng bỏ cuộc giữa chừng, đừng nản chí khi gặp thất bại. Hãy kiên trì, rồi chúng ta sẽ đạt đến thành công.</p><p>\r\n\r\n--\r\n\r\n“Tinh thần của sách KHÔNG CÓ SÔNG QUÁ DÀI không khác cuốn Không có đỉnh quá cao. Đó là tạo sự tự tin và sự kiên trì. Nhưng các tác giả ở đây là thế hệ của những người trẻ đã lớn lên và ý thức được mình phải khởi nghiệp, rồi bắt đầu đối mặt với nhiều khó khăn. Bài toán này, ai ai cũng phải đi qua, vì nó sẽ giúp cho các bạn trẻ hiểu được giá trị của mình, sở trường cũng như sở đoản. Các bạn trẻ sẽ phải dùng đến cả trí tuệ lẫn nội lực trong hành trình tạo dựng sự nghiệp. Cuộc sống muốn như thế, và ta cũng nên làm theo ý như thế.\r\n</p><p>\r\nCứ nhìn nước sông lững lờ nhưng sâu thẳm, nhưng rồi bạn ạ, sông nào cũng sẽ ra biển lớn. Người khởi nghiệp cũng vậy, cứ lững thững mà tiến bước, giống như dòng nước sông, lúc trôi mau, lúc lững lờ, lúc êm lướt, lúc sóng cuộn; rồi sau này ai cũng có nghề có nghiệp, có đúng thế không? Có đi chậm thì mới đi xa, ở đây hành trình tạo dựng sự nghiệp là một chuỗi ngày dài, chẳng thể vội. Hãy bắt chước dòng sông, lợi dụng những chỗ hõm của địa thế để tìm cơ hội.”</p><p>\r\n\r\n- GS Phan Văn Trường</p>', 135000, 2023, 0, 520, 0, 3, 2, b'0'),
(4, '8935235228351', 'Cây Cam Ngọt Của Tôi', '8935235228351.jpg', 'José Mauro de Vasconcelos', '<p>Hãy làm quen với <b>Zezé</b>, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.\r\n\r\nCó hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.</p><p>Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.</p><p>TÁC GIẢ:\r\n\r\nJOSÉ MAURO DE VASCONCELOS (1920-1984) là nhà văn người Brazil. Sinh ra trong một gia đình nghèo ở ngoại ô Rio de Janeiro, lớn lên ông phải làm đủ nghề để kiếm sống. Nhưng với tài kể chuyện thiên bẩm, trí nhớ phi thường, trí tưởng tượng tuyệt vời cùng vốn sống phong phú, José cảm thấy trong mình thôi thúc phải trở thành nhà văn nên đã bắt đầu sáng tác năm 22 tuổi. Tác phẩm nổi tiếng nhất của ông là tiểu thuyết mang màu sắc tự truyện Cây cam ngọt của tôi. Cuốn sách được đưa vào chương trình tiểu học của Brazil, được bán bản quyền cho hai mươi quốc gia và chuyển thể thành phim điện ảnh. Ngoài ra, José còn rất thành công trong vai trò diễn viên điện ảnh và biên kịch.</p>', 86400, 2020, 0, 244, 0, 4, 3, b'0'),
(5, '8935244827972', 'Tuổi Thơ Dữ Dội - Tập 1 (Tái Bản 2019)', '8935244827972.jpg', 'Phùng Quán', '<p>“Tuổi Thơ Dữ Dội” là một câu chuyện hay, cảm động viết về tuổi thơ. Sách dày 404 trang mà người đọc không bao giờ muốn ngừng lại, bị lôi cuốn vì những nhân vật ngây thơ có, khôn ranh có, anh hùng có, vì những sự việc khi thì ly kỳ, khi thì hài hước, khi thì gây xúc động đến ứa nước mắt...</p><p>\r\n\r\n\"Tuổi Thơ Dữ Dội” không phải chỉ là một câu chuyện cổ tích, mà là một câu chuyện có thật ở trần gian, ở đó, những con người tuổi nhỏ đã tham gia vào cuộc kháng chiến chống xâm lược bảo vệ Tổ quốc với một chuỗi những chiến công đầy ắp li kì và hấp dẫn. Đọc Tuổi Thơ Dữ Dội chính là đọc lại một phần lịch sử tuổi thơ Việt, thấm đẫm xúc động, cảm phục và tự hào...\"</p><p>\r\n\r\nNhà thơ - nhạc sĩ Nguyễn Trọng Tạo</p><p>\r\n\r\n\"Có một viên ngọc quý thời gian dành riêng để ban tặng con người, đó là Tuổi thơ. Viên ngọc màu nhiệm, trong sáng nhưng quá mong manh, không thể tìm thấy lần thứ hai trong đời. Và có một thế hệ người Việt chưa bao giờ được cầm viên ngọc trên tay, “Tuổi thơ dữ dội” của Phùng Quán được viết cho thế hệ đó. Hãy đọc để nhớ lại, để tự hào, và để cầu nguyện cho những Tuổi thơ sắp ra đời…”</p><p>\r\n\r\nNhà văn Hoàng Phủ Ngọc Tường</p>', 64000, 2019, 1, 400, 0, 5, 4, b'0'),
(6, '9786043778915', 'Basic Ielts Reading', '9786043778915.jpg', 'Zhang Juan', '<p><b>Basic IELTS</b> series are suitable for those who want to achieve a band score of 3.5-4.5 in the IELTS test. They are also practical materials for high school students, students of pre-intermediate level, and for those who want to build up a <u>solid</u> foundation in their English language competence</p><p>\r\nThe main features of this series of books are as follows:<br>\r\nDesigned in accordance with the content, format and objectives of the IELTS test<br>\r\nReflecting the updated IELTS question types<br>\r\nMeeting the demand and expectations of the focused candidates<br>\r\nContaining authentic, interesting, and rewarding materials<br><br>\r\nAs far as Basic IELTS Reading is concerned, it is arranged into three parts with a total of 19 units whose themes centre upon general, scientific, cultural and social issues of the English-speaking communities and the world. Especially, varied and well-designed tasks which are typical in the IELTS Reading test are provided so as to facilitate actual tests in the most effective way. Moreover, lists of new words and their phonetic symbols added at the end of each reading passage and also at the end of the book will help you to improve your pronunciation as well as to remember spelling, which is essential for your productive skills.</p><p><br>\r\nAn Answer Key booklet is also included so that you can check your work and see your progress and achievement.</p><p><br>\r\nBasic IELTS Reading certainly meets the need of candidates who will sit the Academic Module, but General Training Module candidates can also find it very useful.<br><br>\r\nOn completion of Basic IELTS Reading, you will be able to do typical tasks in the IELTS Reading test, apply useful tips and techniques in answering questions of the IELTS Reading test, be well prepared for gaining a higher score in your actual exam, and achieve your desired band score in the near future.<br><br>\r\nHopefully, you will find Basic IELTS Reading truly helpful and rewarding, and you can eventually achieve your desired goal.</p>', 133500, 2023, 0, 187, 0, 5, 1, b'0'),
(19, '8935235226272', 'Nhà Giả Kim (Tái Bản 2020)', '8935235226272.jpg', 'Paulo Coelho', '<p style=\"margin-bottom: 10px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; background-color: rgb(255, 255, 255); text-align: justify;\">“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”</p><p style=\"margin-bottom: 10px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; background-color: rgb(255, 255, 255); text-align: justify;\">- Trích&nbsp;<em>Nhà giả kim</em></p><p style=\"margin-bottom: 10px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Nhận định</strong></p><p style=\"margin-bottom: 10px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; background-color: rgb(255, 255, 255); text-align: justify;\">“Sau Garcia Márquez, đây là nhà văn Mỹ Latinh được đọc nhiều nhất thế giới.”&nbsp;<em>- The Economist</em>, London, Anh</p><p style=\"margin-bottom: 10px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; background-color: rgb(255, 255, 255); text-align: justify;\">&nbsp;</p><p style=\"margin-bottom: 10px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; background-color: rgb(255, 255, 255); text-align: justify;\">“Santiago có khả năng cảm nhận bằng trái tim như&nbsp;<em>Hoàng tử bé</em>&nbsp;của Saint-Exupéry.”&nbsp;<em>- Frankfurter Allgemeine Zeitung, Đức</em></p>', 65000, 2020, 0, 227, 0, 4, 3, b'0'),
(20, '8935244895773', 'Thám Tử Lừng Danh Conan - Tiểu Thuyết - Tàu Ngầm Sắt Màu Đen', '8935244895773.jpg', 'Gosho Aoyama, Takeharu Sakurai, Shima Mizuki', '<div class=\"product_view_tab_content_ad\" style=\"overflow: hidden; max-height: 600px; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; font-size: 13px;\"><div id=\"product_tabs_description_contents\" style=\"margin-top: 20px; line-height: 25px;\"><div id=\"desc_content\" class=\"std\"><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Phao Thái Bình Dương là cơ sở công nghệ cao kết nối mạng lưới máy quay an ninh toàn cầu. Kĩ sư từ khắp thế giới tề tựu về đây cùng thử nghiệm hệ thống camera tối tân “Xác thực già trẻ” do kĩ sư thiên tài Naomi chế tạo. Nhưng Naomi bị bắt cóc cùng với usb chứa bí mật…</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Tổ chức Áo đen xuất hiện với nạn nhân mới là Haibara Ai. Không chỉ thân phận của cô có nguy cơ bại lộ mà tính mạng cũng bị đe dọa. Conan chứng kiến chiếc xe chở Haibara đã lao thẳng xuống biển… Số phận của Haibara sẽ ra sao? Conan làm cách nào để cứu được cô bạn? Những câu chuyện quá khứ, những cuộc chạm trán đầy duyên nợ, những bí mật nào tưởng đã chôn giấu dưới đáy biển lại trồi lên?</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Một vụ án li kì gay cấn, hồi hộp thót tim nhưng cũng chứa đựng những cảm xúc mãnh liệt về tình bạn, chính nghĩa và hòa bình cho nhân loại.</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">TIỂU THUYẾT THÁM TỬ LỪNG DANH CONAN TÀU NGẦM SẮT MÀU ĐEN cuốn hút bạn đọc bởi câu chuyện vụ án li kì, diễn biến bất ngờ, những suy luận sắc sảo. Ngôn ngữ trong sáng, đơn giản, cách kể chuyện tuyến tính phù hợp với độc giả tuổi thiếu niên, những fan hâm mộ manga quen đọc truyện tranh sẽ thấy quen thuộc gần gũi và dễ dàng tiếp cận. 8 trang tranh màu đính kèm giới thiệu nhân vật và diễn biến vụ án cũng là điểm nhấn của cuốn sách như một món quà tặng kèm.</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">---</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Tác giả Shima MIZUKI</strong></p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Sinh tại: tỉnh Aichi, Nhật Bản.</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Cung hoàng đạo: Kim Ngưu</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Nhóm máu: B</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Sở thích: xem phim điện ảnh và phim truyền hình dài tập của nước ngoài, chơi đùa cùng cún cưng (hiện đang nuôi hai chú Chihuahua)</p><p style=\"margin-bottom: 10px; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify;\">Shima MIZUKI là tác giả của các tiểu thuyết chuyển thể từ loạt phim&nbsp;<em>Thám tử lừng danh Conan</em>.</p></div></div></div>', 45000, 2023, 0, 224, 0, 4, 4, b'0'),
(21, '8934974164135', 'Làm Bạn Với Bầu Trời - Tặng Kèm Khung Hình Xinh Xắn', '8934974164135.jpg', 'Nguyễn Nhật Ánh', '<p><span style=\"color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; font-size: 14.3px; text-align: justify; background-color: rgb(255, 255, 255);\">Như nhà văn từng phát biểu “...điểm mạnh của văn chương nằm ở khả năng thẩm thấu. Bằng hình thức đặc thù của mình, văn chương góp phần mài sắc các ý niệm đạo đức nơi người đọc một cách vô hình. Bồi đắp tâm hồn và nhân cách một cách âm thầm và bền bỉ, đó là chức năng gốc rễ của văn chương, đặc biệt là văn chương viết cho thanh thiếu niên.”</span><br></p>', 88000, 2019, 0, 220, 0, 4, 2, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `total_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `book_name`, `img`, `price`, `total_price`, `quantity`, `user_id`, `book_id`, `deleted`) VALUES
(1, 'Hành Trình Về Phương Đông (Tái Bản 2021)', 'book1.jpg', 100000, 100000, 1, 1, 1, b'0'),
(2, 'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói', 'book2.jpg', 111200, 111200, 1, 1, 2, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `deleted`) VALUES
(1, 'Tâm linh', b'0'),
(2, 'Tâm lý - Kĩ năng sống', b'0'),
(3, 'Kinh tế', b'0'),
(4, 'Tiểu thuyết', b'0'),
(5, 'Thiếu nhi', b'0'),
(6, 'Trinh thám', b'1'),
(7, 'Trinh thám', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `name`, `mobile`, `image`, `email`, `deleted`) VALUES
(1, 'user1', 'user123', 'User 1', '0123456789', 'user1.jpg', 'ducp3352@gmail.com', b'0'),
(2, 'user2', 'user456', 'User 2', '9876543210', 'user2.jpg', NULL, b'0'),
(3, 'user3', 'user789', 'User 3', '0123456789', 'user3.jpg', NULL, b'0'),
(4, 'user4', 'user012', 'User 4', '3456789012', 'user4.jpg', NULL, b'0'),
(5, 'user5', 'user345', 'User 5', '6789012345', 'user5.jpg', NULL, b'0'),
(6, 'ducdaddy', 'ducdaddy', 'Duc', '0111111112', '', 'ducp3352@gmail.com', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `date_of_purchase` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `book_name`, `img`, `price`, `quantity`, `total_price`, `date_of_purchase`, `status`, `payment_method`, `paid`, `user_id`, `book_id`, `address_id`, `deleted`) VALUES
(1, 'Hành Trình Về Phương Đông (Tái Bản 2021)', 'book1.jpg', 100000, 1, 100000, '2023-07-20', 'Thành công', 'Credit Card', 1, 1, 1, 1, b'0'),
(2, 'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói', 'book2.jpg', 111200, 2, 222400, '2023-07-21', 'Thành công', 'Cash on Delivery', 0, 1, 2, 1, b'0'),
(3, 'Không Có Sông Quá Dài - Cẩm Nang Dành Cho Những Người Khởi Nghiệp', 'book3.jpg', 135000, 1, 135000, '2023-07-22', 'Chờ xác nhận', 'PayPal', 0, 1, 3, 1, b'0'),
(4, 'Cây Cam Ngọt Của Tôi', 'book4.jpg', 86400, 1, 86400, '2023-07-23', 'Đang giao hàng', 'Bank Transfer', 0, 1, 4, 1, b'0'),
(5, 'Tuổi Thơ Dữ Dội - Tập 1 (Tái Bản 2019)', 'book5.jpg', 64000, 1, 64000, '2023-07-24', 'Thành công', 'Credit Card', 0, 1, 5, 1, b'0'),
(25, '', '', 64000, 2, 128000, '2023-11-21', 'Đợi xử lí', '', 0, 1, 5, 33, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `publisher_address` varchar(255) NOT NULL,
  `publisher_phone` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `publisher_address`, `publisher_phone`, `deleted`) VALUES
(1, 'NXB Thế Giới', '46 Trần Hưng Đạo, Hà Nội', '02438253841', b'0'),
(2, 'NXB Trẻ', '161B Lý Chính Thắng; Phường 7; Quận 3; Thành phố Hồ Chí Minh', '(201) 291-5000', b'0'),
(3, 'NXB Hội nhà văn', 'SỐ 65 NGUYỄN DU, QUẬN HAI BÀ TRƯNG, HÀ NỘI', '(024) 3822.2135', b'0'),
(4, 'NXB Kim Đồng', '55 P. Quang Trung, Nguyễn Du, Hai Bà Trưng, Hà Nội', '02439434730', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `review_content` text NOT NULL,
  `review_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `vote_score` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
