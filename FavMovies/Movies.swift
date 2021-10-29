import Foundation

public class Movie{
    var title : String
    var rating : Double
    var description : String
    
    init(name: String, rate: Double, desc: String) {
        title = name
        rating = rate
        description = desc
    }
}
