import SwiftUI

enum Regions: String, CaseIterable, Identifiable {
    case europe = "Europe"
    case asia = "Asia"
    case africa = "Africa"
    case america = "America"
    case allRegions = "All"
    
    var id: String { self.rawValue }
    
    var countries: [String] {
        switch self {
        case .europe:
            return ["Albania", "Austuria", "Belarus", "Belgium", "Bosna", "Bulgaria", "Cyprus", "Czech", "Croatia", "Denmark", "Deustchland", "England", "Estonia", "Finland", "France", "GB", "Greece", "Hungary", "Iceland", "Ireland", "Italy", "Lithuania", "Livonia", "Luxembourg", "Macedonia", "Moldovia", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "Russia", "Scotland", "Serbia", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Turkiye", "Ukraine", "Wales"].shuffled()
        case .asia:
            return ["PRC", "India", "Japan", "South Korea", "Indonesia", "Pakistan", "Bangladesh", "Philippines", "Vietnam", "Turkiye", "Iran", "Thailand", "Myanmar", "Iraq", "Afghanistan", "SaudiArabia", "Uzbekistan", "Malaysia", "Yemen", "Nepal", "North Korea", "Sri Lanka", "Kazakistan", "Syria", "Cambodia", "Jordan", "Azerbaijan", "UAE", "Tajikistan", "Israel", "Laos", "Lebanon", "Kırgızistan", "Turkmenistan", "Singapore", "Oman", "Palestine", "Kuwait", "Georgia", "Mongolia", "Armenia", "Qatar", "Bahrein", "Timor-Leste", "Bhutan", "Maldives", "Brunei", "Hong Kong"].shuffled()
        case .africa:
            return ["Nigeria", "Ethiopia", "Egypt", "DR Congo", "Tanzania", "South Africa", "Kenya", "Uganda", "Sudan", "Algeria", "Morocco", "Angola", "Mozambique", "Ghana", "Madagascar", "Cameroon", "CoteDIvoire", "Niger", "BurkinaFaso", "Mali", "Malawi", "Zambia", "Senegal", "Chad", "Somalia", "Zimbabwe", "Guinea", "Rwanda", "Benin", "Burundi", "Tunisia", "South Sudan", "Togo", "SierraLeone", "Libya", "Congo", "Liberia", "Central African Republic", "Mauritania", "Eritrea", "Namibia", "Gambia", "Botswana", "Gabon", "Lesotho", "Guinea-Bissau", "Equatorial Guinea", "Mauritius", "Eswatini", "Djibouti", "Comoros", "Cape Verde", "Sao Tome And Principe", "Seychelles"].shuffled()
        case .america:
            return ["Argentina", "Bahamas", "Barbados", "Belize", "Bolivia", "Brazil", "Canada", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominica", "Dominican Republic", "Ecuador", "El Salvador", "Grenada", "Guatemala", "Guyana", "Haiti", "Honduras", "Jamaica", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Saint Kitts", "Saint Lucia", "Saint Vincent", "Suriname", "Trinidad Tobago", "Uruguay", "USA", "Venezuela"].shuffled()
        case .allRegions:
            return ["Argentina", "Bahamas", "Barbados", "Belize", "Bolivia", "Brazil", "Canada", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominica", "Dominican Republic", "Ecuador", "El Salvador", "Grenada", "Guatemala", "Guyana", "Haiti", "Honduras", "Jamaica", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Saint Kitts", "Saint Lucia", "Saint Vincent", "Suriname", "Trinidad & Tobago", "Uruguay", "USA", "Venezuela", "Albania", "Austuria", "Belarus", "Belgium", "Bosna", "Bulgaria", "Cyprus", "Czech", "Croatia", "Denmark", "Deustchland", "England", "Estonia", "Finland", "France", "GB", "Greece", "Hungary", "Iceland", "Ireland", "Italy", "Lithuania", "Livonia", "Luxembourg", "Macedonia", "Moldovia", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "Russia", "Scotland", "Serbia", "Slovakia", "Slovenia", "Spain", "Sweden", "Switzerland", "Turkiye", "Ukraine", "Wales", "PRC", "India", "Japan", "South Korea", "Indonesia", "Pakistan", "Bangladesh", "Philippines", "Vietnam", "Turkiye", "Iran", "Thailand", "Myanmar", "Iraq", "Afghanistan", "Saudi Arabia", "Uzbekistan", "Malaysia", "Yemen", "Nepal", "North Korea", "Sri Lanka", "Kazakistan", "Syria", "Cambodia", "Jordan", "Azerbaijan", "UAE", "Tajikistan", "Israel", "Laos", "Lebanon", "Kırgızistan", "Turkmenistan", "Singapore", "Oman", "Palestine", "Kuwait", "Georgia", "Mongolia", "Armenia", "Qatar", "Bahrein", "Timor-Leste", "Bhutan", "Maldives", "Brunei", "Hong Kong", "Nigeria", "Ethiopia", "Egypt", "DR Congo", "Tanzania", "South Africa", "Kenya", "Uganda", "Sudan", "Algeria", "Morocco", "Angola", "Mozambique", "Ghana", "Madagascar", "Cameroon", "CoteDIvoire", "Niger", "Burkina Faso", "Mali", "Malawi", "Zambia", "Senegal", "Chad", "Somalia", "Zimbabwe", "Guinea", "Rwanda", "Benin", "Burundi", "Tunisia", "South Sudan", "Togo", "Sierra Leone", "Libya", "Congo", "Liberia", "Central African Republic", "Mauritania", "Eritrea", "Namibia", "Gambia", "Botswana", "Gabon", "Lesotho", "Guinea-Bissau", "Equatorial Guinea", "Mauritius", "Eswatini", "Djibouti", "Comoros", "Cape Verde", "Sao Tome And Principe", "Seychelles"].shuffled()
        }
    }
}
