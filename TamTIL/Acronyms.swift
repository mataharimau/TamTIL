import Foundation

struct Acronym {
  let id = UUID()
  let short: String
  let long: String
  let alt: String?
}

class Acronyms {
  var acronyms: [Acronym] = []
  var display = ""

  let item1 = Acronym(short: "TIL", long: "Today I Learned", alt: nil)
  let item2 = Acronym(short: "MVC", long: "Model View Controller", alt: "Massive View Controller")
  let item3 = Acronym(short: "BRB", long: "Be Right Back", alt: "Buy Rubber Bats")

  init() {
    addAll()
//    display = printAcronyms(acronyms)
    createDisplay()
  }

  func addItem(_ item: Acronym) {
    acronyms.append(item)
  }

  func addAll() {
    addItem(item1)
    addItem(item2)
    addItem(item3)
  }

  func printAcronyms(_ acronyms: [Acronym]) -> String {
    var display = ""

    for item in acronyms {
      if let alt = item.alt {
        display += "\(item.short): \(item.long) or \(alt)\n"
      }
    }

    return display
  }

  // Alternative: Append directly to the display property
  func createDisplay() {
    for item in acronyms {
      if let alt = item.alt {
        display += "\(item.short): \(item.long) or \(alt)\n"
      }
    }
  }
}
