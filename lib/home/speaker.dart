class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String instagramUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.instagramUrl,
      this.speakerSession,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    instagramUrl = json['instagram_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['instagram_url'] = this.instagramUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/1f83162ea164344e1227541dca1d8660/5E672791/t51.2885-19/s320x320/70622971_493158431466487_3133089178263224320_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net",
    speakerName: "Parth Mistry",
    speakerDesc: "Android Application Developer ",
    speakerSession: "Talk: Getting Started With Google Analytics",
    fbUrl: "https://www.facebook.com/parth.h.m",
    githubUrl: "https://github.com/m-prth",
    linkedinUrl: "https://www.linkedin.com/in/parth-mistry-652005184/",
    twitterUrl: "https://twitter.com/m_prth",
    instagramUrl: "https://www.instagram.com/m_prth/",
  ),
  Speaker(
    speakerImage:
        "https://scontent.famd1-2.fna.fbcdn.net/v/t1.0-9/s960x960/46970560_1442687685864247_2627033239272816640_o.jpg?_nc_cat=106&_nc_oc=AQnx2bio4wEqtxpd61vzTIkAuxha4Dmb7325uO4eclj2Dt6RqVkc4avOTXTScYG-MDKhrBz13h2ugitO1MUr887K&_nc_ht=scontent.famd1-2.fna&oh=b0d9c0c63a77c296bb894467aca968d6&oe=5E43F814",
    speakerName: "Dhruvin Lad",
    speakerDesc: "Web Developer",
    speakerSession: "How I became a WebDeveloper using JavaScript",
    fbUrl: "https://www.facebook.com/Dhl846",
    githubUrl: "https://github.com/dhl846",
    linkedinUrl: "",
    twitterUrl: "",
    instagramUrl: "https://www.instagram.com/laddhruvin/",
  ),
  Speaker(
    speakerSession: "Data Analysis Using Python",
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/0f05b6d22e26ebe3db757fe4f4bb3c64/5E5B1B36/t51.2885-15/sh0.08/e35/s640x640/69357280_1125313967856758_2821975144437784701_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net&_nc_cat=102 640w,https://instagram.famd1-1.fna.fbcdn.net/vp/162e71e59f057137c4ee0b85262f101d/5E609EF2/t51.2885-15/sh0.08/e35/s750x750/69357280_1125313967856758_2821975144437784701_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net&_nc_cat=102 750w,https://instagram.famd1-1.fna.fbcdn.net/vp/54ddd6ca17b2982f30c85a1ca62b6faf/5E466F8C/t51.2885-15/e35/69357280_1125313967856758_2821975144437784701_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net&_nc_cat=102 1080w",
    speakerName: "Aayush Jain",
    speakerDesc: "Data Analyst",
    fbUrl: "https://www.facebook.com/aayush.jain.9843",
    githubUrl: "https://github.com/Darkshadow9799",
    linkedinUrl: "https://www.linkedin.com/in/aayush-jain-88a674148/",
    twitterUrl: "",
    instagramUrl: "https://www.instagram.com/mr_aayush_jain/",
  ),
  Speaker(
    speakerSession: "Cloud Computing using Amazon Web Services",
    speakerImage:
        "https://instagram.famd1-2.fna.fbcdn.net/vp/418dc56dc3dd23abbdee1fc3773994c3/5E4D5A3B/t51.2885-15/sh0.08/e35/s640x640/75448856_177475703309934_1344063970335528457_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=106 640w,https://instagram.famd1-2.fna.fbcdn.net/vp/01cc09ebd97f0ff22e8ecca8c4e1dea2/5E4A003B/t51.2885-15/sh0.08/e35/s750x750/75448856_177475703309934_1344063970335528457_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=106 750w,https://instagram.famd1-2.fna.fbcdn.net/vp/60de087c148fce59482879e51721b69c/5E5A2FDE/t51.2885-15/e35/75448856_177475703309934_1344063970335528457_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=106 1080w",
    speakerName: "Dhruv Desai",
    speakerDesc: "Cloud Archietect",
    fbUrl: "https://www.facebook.com/dhruv1265d",
    githubUrl: "https://github.com/dhruv1214",
    linkedinUrl: "https://www.linkedin.com/in/dhruv-desai-3017/",
    twitterUrl: "",
    instagramUrl: "https://www.instagram.com/dhruv_desai03/",
  ),
  Speaker(
    speakerSession: "Talk: Flutter for mobile",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1135418232758624256/9vzkjfto_400x400.jpg",
    speakerName: "Avinash Khatri",
    speakerDesc: "Mobile App Developer",
    fbUrl: "",
    githubUrl: "",
    linkedinUrl: "https://www.linkedin.com/in/avinash-khatri-29556b14b/",
    twitterUrl: "https://twitter.com/Avinashk31",
    instagramUrl: "https://www.instagram.com/amkhatri31/",
  ),
  Speaker(
    speakerSession: "Core Web Developement",
    speakerImage:
        "https://scontent.famd1-1.fna.fbcdn.net/v/t1.0-9/10384034_414055512103749_979818823111961591_n.jpg?_nc_cat=108&_nc_oc=AQln3mKYmGLRJfuHy9NByqIc9B8ktzZIHZIaqOBlW_asWWpWk2V6lzouMSdXtDiS3ReXxpH3qJHPEobQCPwhTBI3&_nc_ht=scontent.famd1-1.fna&oh=a4180cbdd8b4e33c6d735217076fd6c2&oe=5E4FE989",
    speakerName: "Aditya Desle",
    speakerDesc: "Full Stack Web Developer",
    fbUrl: "https://www.facebook.com/aditya.desle.3",
    githubUrl: "https://github.com/adityadesle",
    linkedinUrl: "https://www.linkedin.com/in/aditya-desle-98b827154/",
    twitterUrl: "https://twitter.com/AdityaDesle1",
    instagramUrl: "https://www.instagram.com/adityadesle/",
  ),
  Speaker(
    speakerSession: "Mobile Database Persistence",
    speakerImage:
        "https://pbs.twimg.com/profile_images/1175609914162442241/FNiQnOLv_400x400.jpg",
    speakerName: "Harsh Bhavsar",
    speakerDesc: "Software Developer",
    fbUrl: "https://www.facebook.com/harsh.bhavsar.779",
    githubUrl: "",
    linkedinUrl: "",
    twitterUrl: "https://twitter.com/i_m_h_a_r_s_h_/",
    instagramUrl: "https://www.instagram.com/hharshhhh/",
  ),
  Speaker(
    speakerSession: "Machine Learning using Python",
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/44d708bb3f989fd10b2120bbaa55b599/5E666087/t51.2885-19/s320x320/16789307_1919040328325074_7761844990157783040_a.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net",
    speakerName: "Yash Rathod",
    speakerDesc: "Software Developer",
    fbUrl: "https://www.facebook.com/yash.rathod.3051999",
    githubUrl: "",
    linkedinUrl: "",
    twitterUrl: "",
    instagramUrl: "https://www.instagram.com/yash_rathod_007/",
  ),
  Speaker(
    speakerSession: "Progressive Experience Web Development",
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/822b2111f2d92346d6acceea1cc5977f/5E5E6462/t51.2885-19/s320x320/67883433_529280647824416_7612182748739928064_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net",
    speakerName: "Parth Patel",
    speakerDesc: "Web Developer Advocate",
    fbUrl: "https://www.facebook.com/parth21022000",
    githubUrl: "",
    linkedinUrl: "https://www.linkedin.com/in/parth-patel-556a8014b/",
    twitterUrl: "",
    instagramUrl: "https://www.instagram.com/parth_2102/",
  ),
];
