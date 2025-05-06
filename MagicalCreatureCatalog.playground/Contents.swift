//Part 1 and 2

func fibonacciAbility(_ numbrToStopAt: Int) -> Int{
      if numbrToStopAt < 0 {
        return 0
      }

      var fibonacciSeries: [Int] = []

      for index in 0...numbrToStopAt {
        if index < 2 {
          fibonacciSeries.append(index)
        } else {
          let element1 = fibonacciSeries[fibonacciSeries.count-1]
          let element2 = fibonacciSeries[fibonacciSeries.count-2]
          fibonacciSeries.append(element1 + element2)
        }
      }

    //  print(fibonacciSeries)

      return fibonacciSeries[numbrToStopAt]
}

//Struct definition

protocol Creature {
    func describeItself() -> String
}

struct Dragon: Creature {
    private let name: String
    private let description: String
    private let isGood: Bool
    private let magicPower: Int
    private let abilityPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
        self.abilityPower = fibonacciAbility(magicalPower)
    }
    
    func ability(){
        print("Breath Fire that causes \(abilityPower) pts of damage")
    }
    
    func describeItself() -> String {
        return "name: \(name), \(description), \(isGood ? "is good" : "is evil"), its magical power is\(magicPower)"
    }
}

struct Wizard: Creature {
    private let name: String
    private let description: String
    private let isGood: Bool
    private let magicPower: Int
    private let abilityPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
        self.abilityPower = fibonacciAbility(magicalPower)
    }
    func ability(){
        print("Cast an spell that causes \(abilityPower) pts of damage")
    }
    func describeItself() -> String {
        return "name: \(name), \(description), \(isGood ? "is good" : "is evil"), its magical power is\(magicPower)"
    }
}

struct Elf: Creature {
    private let name: String
    private let description: String
    private let isGood: Bool
    private let magicPower: Int
    private let abilityPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
        self.abilityPower = fibonacciAbility(magicalPower)
    }
    func ability(){
        print("Throws a magic dust that causes \(abilityPower) pts of damage")
    }
    func describeItself() -> String {
        return "name: \(name), \(description), \(isGood ? "is good" : "is evil"), its magical power is\(magicPower)"
    }
}


struct Fairy: Creature {
    private let name: String
    private let description: String
    private let isGood: Bool
    private let magicPower: Int
    private let abilityPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
        self.abilityPower = fibonacciAbility(magicalPower)
    }
    
    func ability(){
        print("Throws a magic dust that causes \(abilityPower) pts of damage")
    }
    func describeItself() -> String{
        return "name: \(name), \(description), \(isGood ? "is good" : "is evil"), its magical power is\(magicPower)"
    }
}

let gandalfTheGrayWizard = Wizard(name: "Gandalf", descripton: "a figure of wisdom, determination but humble and friendly", isGood: true, magicalPower: 3)
let gandalfTheWhiteWizard = Wizard(name: "Gandalf", descripton: "a figure of greate authority and power, imbued with a clearer purpose", isGood: true, magicalPower: 10)
let smaugTheDragon = Dragon(name: "Smaug", descripton: "the magifisent and terrifying fire-breathing creature of immense size and greed", isGood: false, magicalPower: 10)
let naviTheFary = Fairy(name: "Navi", descripton: "she is known for her constant and sometime annoying cries of 'Hey!'", isGood: true, magicalPower: 1)
let elf = Elf(name: "Dobby", descripton: "he used to be an salve, but he is no more, he is a free elf", isGood: true, magicalPower: 5)

//gandalfTheGrayWizard.ability()
//gandalfTheWhiteWizard.ability()
//smaugTheDragon.ability()
//naviTheFary.ability()
//elf.ability()

//Part 3

var creatureCatalog: [Creature] = [gandalfTheGrayWizard,gandalfTheWhiteWizard,smaugTheDragon,naviTheFary,elf]

func decribeCreature(_ catalog: [Creature]){
    for creature in catalog{
        print(creature.describeItself())
    }
}


decribeCreature(creatureCatalog)
