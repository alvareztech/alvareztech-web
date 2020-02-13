import Publish

extension Theme where Site == AlvarezTech {
    
    static var twentyTwenty: Self {
        Theme(htmlFactory: TwentyTwentyHTMLFactory())
    }
}
