//Struct definition

struct Dragon {
    let name: String
    let description: String
    let isGood: Bool
    let magicPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
    }
}

struct Wizard {
    let name: String
    let description: String
    let isGood: Bool
    let magicPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
    }
}

struct Elf {
    let name: String
    let description: String
    let isGood: Bool
    let magicPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
    }
}


struct Fairy {
    let name: String
    let description: String
    let isGood: Bool
    let magicPower: Int
    
    init(name:String, descripton:String, isGood:Bool, magicalPower:Int) {
        self.name = name
        self.description = descripton
        self.isGood = isGood
        self.magicPower = magicalPower
    }
}

let gandalfTheGrayWizard = Wizard(name: "Gandalf", descripton: "a figure of wisdom, determination but humble and friendly", isGood: true, magicalPower: 30)
let gandalfTheWhiteWizard = Wizard(name: "Gandalf", descripton: "a figure of greate authority and power, imbued with a clearer purpose", isGood: true, magicalPower: 100)
let smaugTheDragon = Dragon(name: "Smaug", descripton: "the magifisent and terrifying fire-breathing creature of immense size and greed", isGood: false, magicalPower: 100)
let naviTheFary = Fairy(name: "Navi", descripton: "she is known for her constant and sometime annoying cries of 'Hey!'", isGood: true, magicalPower: 10)
let elf = Elf(name: "Dobby", descripton: "he used to be an salve, but he is no more, he is a free elf", isGood: true, magicalPower: 50)

