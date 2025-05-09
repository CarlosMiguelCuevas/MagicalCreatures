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

protocol CreatureProtocol {
    func ability() -> String
}

class Creature: CreatureProtocol{
    
    internal let name: String
    internal let description: String
    internal let isGood: Bool
    internal let magicPower: Int
    internal let abilityPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
        self.abilityPower = fibonacciAbility(magicalPower)
    }
    
    func describeItself() -> String {
        return "name: \(name), \(description), \(isGood ? "is good" : "is evil"), its magical power is \(magicPower)"
    }
    
    func interactsWith(_ otherCreature: Creature){
        if(!self.isGood){
            print("I attack, I am evil, i don't care")
        }else{
            switch otherCreature.isGood{
                case true : print("other creature is good, so I won't attack")
                case false: print("other creature is evil, so I will attack")
            }
        }
    }
    
    func ability() -> String{
        return "Bad practice, override this method"
    }
}

class Dragon: Creature {
    override func ability() -> String{
        return "Breath Fire that causes \(abilityPower) pts of damage"
    }
}

class Wizard: Creature {
    override func ability() -> String {
        return "Cast an spell that causes \(abilityPower) pts of damage"
    }
}

class Elf: Creature {
    override func ability() -> String {
        return "Throws a magic dust that causes \(abilityPower) pts of damage"
    }
}


class Fairy: Creature {
    override func ability() -> String {
        return "Throws a magic dust that causes \(abilityPower) pts of damage"
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
        print("\(creature.describeItself()), the special ability is: \(creature.ability())" )
    }
}

decribeCreature(creatureCatalog)

//Part 4

//func decribeCreatureInteraction(_ catalog: [Creature]){
//    for creature in catalog{
//        for creature2 in catalog{
//            if creature !== creature2{
//                print("\(creature.name) interacts with \(creature2.name)")
//            }
//        }
//    }
//}

