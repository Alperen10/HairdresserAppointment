import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ListView(
          children: [
            Text("Hakkımızda",style: TextStyle(fontSize: 24.0,color: Colors.blue),),
            Divider(height: 15.0,color: Colors.blue,),
            Text("Salon Deniz, 1971 yılında Manisa'nın Turgutlu ilçesinde Deniz Çakmak tarafından kurulmuştur.Kuruluşundan bugüne güler yüz, iş disiplini, AR-GE çalışmaları ve deneyimli ekibi ile değerli müşterilerine hizmet vermeye devam etmektedir.",
            style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 25.0,),
            Divider(height: 15.0,color: Colors.blue,),
            Text("Hizmetlerimiz",style: TextStyle(fontSize: 24.0,color: Colors.blue),),
            Divider(height: 15.0,color: Colors.blue,),
            Text("2015 yılında yenilenen yüzü ve güncel yenilikleri benimseyerek düzenlediği hizmetleriyle, dünden bugüne olduğu gibi sektördeki konumunu üst seviyelerde tutmaya devam etmektedir. Müşterilerine çağcıl kesim ve renklendirme tekniklerinin yanı sıra, salon içerisinde dizayn edilen odalarda lazer epilasyon, genel ve bölgesel sir ağda, masaj, duş gibi ekstra hizmetler sunmaktadır.Salon Deniz'de değişmeyen tek şey kalitedir.",
            style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 25.0,),
            Divider(height: 15.0,color: Colors.blue,),
            Text("İlkelerimiz",style: TextStyle(fontSize: 24.0,color: Colors.blue),),
            Divider(height: 15.0,color: Colors.blue,),
            Text("45. yılını aşmış markamızda vazgeçmediğimiz ilkeler;",style: TextStyle(fontSize: 20.0),),
            Text(" - Sürekli müşteri memnuniyeti",style: TextStyle(fontSize: 20.0),),
            Text(" - Hijyenik çalışma ortamı",style: TextStyle(fontSize: 20.0),),
            Text(" - Çalışan sadakati ile birlikte müşteri sadakati",style: TextStyle(fontSize: 20.0),),
            Text(" - Kaliteli hizmet anlayışı",style: TextStyle(fontSize: 20.0),),
            Text(" - Alanında donanımlı çalışma ekibi",style: TextStyle(fontSize: 20.0),),
            Text(" - Dürüst iletisim",style: TextStyle(fontSize: 20.0),),
            Text(" - Yeniliklerde öncülük",style: TextStyle(fontSize: 20.0),),
            Text(" - Sektör ile ilgili tüm teknik ve özelliklerde yeni ürünlere sahip olmak",style: TextStyle(fontSize: 20.0),),
            Text(" - Dünya modasını koleksiyonlar ile müşteri ve ekiplerimize taşımak, tanıtmak.",style: TextStyle(fontSize: 20.0),),

          ],
        ),
      )
    );
  }
}