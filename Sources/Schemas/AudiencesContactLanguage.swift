import Foundation

/// The contact's detected language. Empty string when no language has been detected or set.
public enum AudiencesContactLanguage: String, Codable, Hashable, CaseIterable, Sendable {
    case empty = ""
    case en
    case ar
    case af
    case be
    case bg
    case ca
    case zh
    case zhCn = "zh_CN"
    case hr
    case cs
    case da
    case nl
    case et
    case fa
    case fi
    case fr
    case frCa = "fr_CA"
    case de
    case el
    case he
    case hi
    case hu
    case `is`
    case id
    case ga
    case it
    case ja
    case km
    case ko
    case lv
    case lt
    case mt
    case ms
    case mk
    case no
    case pl
    case pt
    case ptPt = "pt_PT"
    case ro
    case ru
    case sr
    case sk
    case sl
    case es
    case esEs = "es_ES"
    case sw
    case sv
    case ta
    case th
    case tr
    case uk
    case vi
}