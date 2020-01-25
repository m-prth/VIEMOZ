class SessionsData {
  List<Session> sessions;

  SessionsData({this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      sessions = new List<Session>();
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Session {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String track;

  Session({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerInfo,
    this.speakerId,
    this.track,
  });

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['track'] = this.track;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be mobile, web and cloud (Make it web by default or if the track type is not clear.)

List<Session> sessions = [
  Session(
    sessionId: "1",
    sessionStartTime: "9:00 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Talk: Getting Started With Google Analytics",
    sessionDesc: desc,
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/1f83162ea164344e1227541dca1d8660/5E672791/t51.2885-19/s320x320/70622971_493158431466487_3133089178263224320_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net",
    speakerName: "Parth Mistry",
    speakerDesc: "Android Application Developer",
    track: "Mobile",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "9:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "How I became a WebDeveloper using JavaScript",
    sessionDesc: desc,
    speakerImage:
        "https://scontent.famd1-2.fna.fbcdn.net/v/t1.0-9/s960x960/46970560_1442687685864247_2627033239272816640_o.jpg?_nc_cat=106&_nc_oc=AQnx2bio4wEqtxpd61vzTIkAuxha4Dmb7325uO4eclj2Dt6RqVkc4avOTXTScYG-MDKhrBz13h2ugitO1MUr887K&_nc_ht=scontent.famd1-2.fna&oh=b0d9c0c63a77c296bb894467aca968d6&oe=5E43F814",
    speakerName: "Dhruvin Lad",
    speakerDesc: "Web Developer",
    track: "web",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "10:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Data Analysis Using Python",
    sessionDesc: desc,
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/0f05b6d22e26ebe3db757fe4f4bb3c64/5E5B1B36/t51.2885-15/sh0.08/e35/s640x640/69357280_1125313967856758_2821975144437784701_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net&_nc_cat=102 640w,https://instagram.famd1-1.fna.fbcdn.net/vp/162e71e59f057137c4ee0b85262f101d/5E609EF2/t51.2885-15/sh0.08/e35/s750x750/69357280_1125313967856758_2821975144437784701_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net&_nc_cat=102 750w,https://instagram.famd1-1.fna.fbcdn.net/vp/54ddd6ca17b2982f30c85a1ca62b6faf/5E466F8C/t51.2885-15/e35/69357280_1125313967856758_2821975144437784701_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net&_nc_cat=102 1080w",
    speakerName: "Aayush Jain",
    speakerDesc: "Data Analyst",
    track: "cloud",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Cloud Computing using Amazon Web Services",
    sessionDesc: desc,
    speakerImage:
        "https://instagram.famd1-2.fna.fbcdn.net/vp/418dc56dc3dd23abbdee1fc3773994c3/5E4D5A3B/t51.2885-15/sh0.08/e35/s640x640/75448856_177475703309934_1344063970335528457_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=106 640w,https://instagram.famd1-2.fna.fbcdn.net/vp/01cc09ebd97f0ff22e8ecca8c4e1dea2/5E4A003B/t51.2885-15/sh0.08/e35/s750x750/75448856_177475703309934_1344063970335528457_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=106 750w,https://instagram.famd1-2.fna.fbcdn.net/vp/60de087c148fce59482879e51721b69c/5E5A2FDE/t51.2885-15/e35/75448856_177475703309934_1344063970335528457_n.jpg?_nc_ht=instagram.famd1-2.fna.fbcdn.net&_nc_cat=106 1080w",
    speakerName: "Dhruv Desai",
    speakerDesc: "Cloud Archietect",
    track: "cloud",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "1:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Talk: Flutter for mobile",
    sessionDesc: desc,
    speakerImage:
        "https://pbs.twimg.com/profile_images/1135418232758624256/9vzkjfto_400x400.jpg",
    speakerName: "Avinash Khatri",
    speakerDesc: "Mobile App Developer",
    track: "mobile",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "2:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Core Web Developement",
    sessionDesc: desc,
    speakerImage:
        "https://scontent.famd1-1.fna.fbcdn.net/v/t1.0-9/10384034_414055512103749_979818823111961591_n.jpg?_nc_cat=108&_nc_oc=AQln3mKYmGLRJfuHy9NByqIc9B8ktzZIHZIaqOBlW_asWWpWk2V6lzouMSdXtDiS3ReXxpH3qJHPEobQCPwhTBI3&_nc_ht=scontent.famd1-1.fna&oh=a4180cbdd8b4e33c6d735217076fd6c2&oe=5E4FE989",
    speakerName: "Aditya Desle",
    speakerDesc: "Full Stack Web Developer",
    track: "web",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "3:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Mobile Database Persistence",
    sessionDesc: desc,
    speakerImage:
        "https://pbs.twimg.com/profile_images/1175609914162442241/FNiQnOLv_400x400.jpg",
    speakerName: "Harsh Bhavsar",
    speakerDesc: "Software Developer",
    track: "mobile",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "4:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Machine Learning using Python",
    sessionDesc: desc,
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/44d708bb3f989fd10b2120bbaa55b599/5E666087/t51.2885-19/s320x320/16789307_1919040328325074_7761844990157783040_a.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net",
    speakerName: "Yash Rathod",
    speakerDesc: "Software Developer",
    track: "web",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "5:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Progressive Experience Web Development",
    sessionDesc: desc,
    speakerImage:
        "https://instagram.famd1-1.fna.fbcdn.net/vp/822b2111f2d92346d6acceea1cc5977f/5E5E6462/t51.2885-19/s320x320/67883433_529280647824416_7612182748739928064_n.jpg?_nc_ht=instagram.famd1-1.fna.fbcdn.net",
    speakerName: "Parth Patel",
    speakerDesc: "Web Developer Advocate",
    track: "web",
  ),
];