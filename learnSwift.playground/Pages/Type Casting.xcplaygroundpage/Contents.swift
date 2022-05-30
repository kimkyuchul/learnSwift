//: [Previous](@previous)

import Foundation

// 타입 캐스팅? : 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 혹은 서브 클래스로 취급 하는 방법
// is, as 값의 타입을 확인, 값을 다른 타입으로 변환할 때 사용

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "기생충", director: "봉준호"),
    Song(name: "SUPER STAR", artist: "권지용"),
    Movie(name: "올드보이", director: "박찬욱"),
    Song(name: "Wonderwall", artist: "Oasis"),
    Song(name: "BAE BAE", artist: "BigBang")
]

//라이브러리는 타입 추론에 의해 무비, 송 클래스의 부모 클래스인 미디어아이템 타입의 배열이다

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie { //배열의 2개의 movie 타입을 확인
        movieCount += 1
    } else if item is Song { //배열의 3개의 song 타입을 확인
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

//형을 변환할 수 있는 다운캐스팅
//특정 클래스 타입의 상수/변수는 하위 클래스의 인스턴스를 참조할 수 있다. => 라이브러리 배열과 같이 무비 아이템 타입으로 선언된 배열을 다운 캐스팅을 이용하여 무비/아이템의 서브 클래스인 무비, 송 인스턴스를 참조할 수 있다.
//이 경우에 타입 캐스트 연산자로 as? as! 서브클래스 타입으로 다운캐스팅 형 변환을 시킬 수 있다.
// 슈퍼 클래스 인스턴스를 "서브 클래스의 타입"으로 참조한다
// 업캐스팅된 인스턴스를 다시 원래 서브 클래스 타입으로 참조할 때 사용한다

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    }   else if let song = item as? Song {
        print("Song: \(song.name), dir. \(song.artist)")
    }
    
}
