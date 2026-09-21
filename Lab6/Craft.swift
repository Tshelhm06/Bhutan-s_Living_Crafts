import Foundation

struct Craft: Identifiable {
    let id = UUID()
    let name: String
    let englishName: String
    let imageName: String
    let description: String
}

let crafts: [Craft] = [
    Craft(
        name: "Shingzo",
        englishName: "Carpentry",
        imageName: "shingzo",
        description: "Shingzo is the traditional Bhutanese art of carpentry. It involves working with wood to construct buildings, furniture and other objects using traditional techniques."
    ),
    
    Craft(
        name: "Dozo",
        englishName: "Masonry",
        imageName: "dozo",
        description: "Dozo is the traditional Bhutanese art of masonry. It involves working with stone and other materials to construct buildings, walls and architectural features."
    ),
    
    Craft(
        name: "Parzo",
        englishName: "Carving",
        imageName: "parzo",
        description: "Parzo is the traditional art of carving. Craftspeople carve wood and other materials into decorative and functional objects featuring traditional Bhutanese designs."
    ),
    
    Craft(
        name: "Lhazo",
        englishName: "Painting",
        imageName: "lhazo",
        description: "Lhazo is the traditional art of painting. Artists create detailed religious and decorative paintings using traditional Bhutanese colours, patterns and techniques."
    ),
    
    Craft(
        name: "Jinzo",
        englishName: "Sculpting",
        imageName: "jinzo",
        description: "Jinzo is the traditional art of sculpting. Craftspeople shape materials such as clay and other substances into religious figures and decorative objects."
    ),
    
    Craft(
        name: "Lugzo",
        englishName: "Bronze-casting",
        imageName: "lugzo",
        description: "Lugzo is the traditional art of bronze-casting. It involves creating metal objects such as religious statues and decorative pieces using traditional casting methods."
    ),
    
    Craft(
        name: "Garzo",
        englishName: "Blacksmithing",
        imageName: "garzo",
        description: "Garzo is the traditional art of blacksmithing. Metal is heated, shaped and forged to create tools, implements and other useful objects."
    ),
    
    Craft(
        name: "Troeko",
        englishName: "Ornament-making",
        imageName: "troeko",
        description: "Troeko is the traditional craft of making ornaments and decorative objects using traditional Bhutanese materials and techniques."
    ),
    
    Craft(
        name: "Tsharzo",
        englishName: "Cane and bamboo work",
        imageName: "tsharzo",
        description: "Tsharzo is the traditional art of working with cane and bamboo. These natural materials are shaped and woven into baskets, containers, furniture and other objects."
    ),
    
    Craft(
        name: "Thagzo",
        englishName: "Weaving",
        imageName: "thagzo",
        description: "Thagzo is the traditional Bhutanese art of weaving. Weavers create textiles featuring traditional patterns and colours that are important to Bhutanese culture."
    ),
    
    Craft(
        name: "Tshemzo",
        englishName: "Tailoring, embroidery & appliqué",
        imageName: "tshemzo",
        description: "Tshemzo includes traditional tailoring, embroidery and appliqué. Artisans make and decorate garments using detailed stitching and traditional Bhutanese designs."
    ),
    
    Craft(
        name: "Shagzo",
        englishName: "Woodturning",
        imageName: "shagzo",
        description: "Shagzo is the traditional art of woodturning. Wooden pieces are shaped into bowls, cups, containers and other objects."
    ),
    
    Craft(
        name: "Deh-sho",
        englishName: "Paper-making",
        imageName: "deh-sho",
        description: "Deh-sho is the traditional Bhutanese art of paper-making. Handmade paper is produced from natural plant fibres using traditional methods."
    )
]
