class Job {
  String title,
      writer,
      price,
      image,
      description =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.';
  int pages;
  double rating;

  Job(
      this.title, this.writer, this.price, this.image);
}

final List<Job> jobs = [
  Job('Supir Pribadi 3 hari', 'Andu ', 'Rp 50.000', 'assets/job.png'),
  Job('Supir Pribadi 1 hari', 'Widada', 'Rp 55.000', 'assets/job.png'),
  Job('Supir Pribadi 1 minggu', 'Jubil', 'Rp 60.000', 'assets/job.png'),
  Job('Mencuci pakaian harian', 'endah', 'Rp 58.000', 'assets/job.png'),
  Job('Menggosok Pakaian selama 1 minggu', 'Rini', 'Rp 90.000', 'assets/job.png'),
  Job('Membersihkan Kebun harian', 'Jubilee ', 'Rp 57.000', 'assets/job.png'),
  Job('Menjaga Toko', 'Lee ', 'Rp 56.000', 'assets/job.png'),
  Job('Membantu bertani', 'sodikin ', 'Rp 55.000', 'assets/job.png'),
  Job('Membuat garasi', 'suherman ', 'Rp 54.000', 'assets/job.png'),
];