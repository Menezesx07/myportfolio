class CertificateModel {

  String name;
  String desc;
  String date;
  String url;

  CertificateModel({required this.name, required this.url, required this.desc, required this.date});

  //static para que a lista seja acessada sem criar um parametro
  static List<CertificateModel> getCertificate() {
    List<CertificateModel> certificate = [];

    certificate.add(
        CertificateModel(
            name: "Fast Acceleration - Cesar School",
            desc: "Platform Engineering - DevOps",
            date: "Nov/2023 - Dez/2023",
            url: "assets/page4/cesar.png")
    );

    certificate.add(
        CertificateModel(
            name: "Santander Mobile 2023 - Dio.me",
            desc: "Mobile Developer - Flutter",
            date: "Ago/2023 - Out/2023",
            url: "assets/page4/dio.png")
    );

    certificate.add(
        CertificateModel(
            name: "Google Learning Program",
            desc: "Data Analyst - R",
            date: "Jun/2023 - Dez/2023",
            url: "assets/page4/google.png")
    );

    certificate.add(
        CertificateModel(
            name: "Spread Full-Stack - Dio.me",
            desc: "React + SpringBoot",
            date: "Mar/2023 - Mai/2023",
            url: "assets/page4/dio.png")
    );




    return certificate;
  }

}