//
//  File.swift
//  
//
//  Created by Mikhail Kulichkov on 17.12.2019.
//

import Foundation

struct Artworks {
	private init() {}
}

extension Artworks {
	private(set) static var englishArtworks: [Artwork] = genericArtworks.filter { $0.language == "en" }
	private(set) static var dutchArtworks: [Artwork] = genericArtworks.filter { $0.language == "nl" }

	static private let genericArtworks: [Artwork] = [
		Artwork(
			id: 246,
			language: "en",
			title: "All the light you see",
			location: Location(
				id: 246,
				lat: 52.373759713654003,
				lng: 4.9141258533172998),
			viewPoint: Location(
				id: 246,
				lat: 52.373485000000002,
				lng: 4.9126719999999997),
			icon: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/All-the-light-you-see.png",
			iconDark: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/ALF-icons-kunstwerken-20.png",
			excerpt: "Light always takes a moment to travel from one point to another – one second to cover 300,000 kilometres to be precise – and to reach our eyes. The travel time varies from, for example, eight minutes for the light from the sun to reach the earth, to millions of years from a star at the edge of our universe. This means that the information that light brings us, like how long ago that distant star was born, is always dated.",
			thumbnailImage: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/All-the-Light-you-See.",
			content: "Exactly that is the focus of Alicia Eggert’s artwork 'All the Light You See'. As in many of her works, Eggert uses a poetic statement written in light that changes meaning with a small intervention. Part of the text in ‘All the Light You See is From the Past’ occasionally switches off, making her message even simpler, ‘All You See is Past’. 'All the Light You See' is therefore a memento mori (Latin for ‘reflection on mortality’), an artwork that reminds us that in a short while, we too will belong to the past.\n\nThis work draws your attention much like neon signs, which were popular between the 1920s and 1960s (think of the billboards in Las Vegas). But Eggert doesn’t use it to sell a product or a service. She hopes to make you aware of the enormous amount of light that bombards you from all angles and overloads you with information.",
			image: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/All-the-Light-you-See-header.jpg",
			artist: Artist(
				id: 246,
				image: "https://amsterdamlightfestival.com/storage/artists/September2019/Ad6OajkOysbAbN76KPJL.jpg",
				name: "Alicia Eggert",
				information: "American interdisciplinary artist Alicia Eggert (1981) lives and works in Texas. She graduated as a sculptor from Alfred University in New York and explores the relationship between language, image and time. Words and statements are used in her installations as found objects, and she often writes them out with (neon) light. Eggert also works as a lecturer and coordinator of the sculpture department at the University of North Texas in Denton.")),
		Artwork(
		id: 246,
		language: "nl",
		title: "All the light you see",
		location: Location(
			id: 246,
			lat: 52.373759713654003,
			lng: 4.9141258533172998),
		viewPoint: Location(
			id: 246,
			lat: 52.373485000000002,
			lng: 4.9126719999999997),
		icon: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/All-the-light-you-see.png",
		iconDark: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/ALF-icons-kunstwerken-20.png",
		excerpt: "Licht doet er altijd even over om van het ene punt naar het andere te reizen – om precies te zijn, één seconde per 300.000 kilometer – en dus om onze ogen te bereiken. Die reistijd varieert van bijvoorbeeld 8 minuten voor het licht dat van de zon naar de aarde wordt verzonden, tot miljoenen jaren bij de straling van een ster die zich aan de rand van ons universum bevindt. De informatie die het licht ons brengt, bijvoorbeeld hoe lang geleden die verre ster is ontstaan, is dus eigenlijk altijd oud.",
		thumbnailImage: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/All-the-Light-you-See.",
		content: "Precies over dat feit gaat het kunstwerk All the Light You See van Alicia Eggert. Zoals in veel van haar andere werk gebruikt Eggert een poëtisch statement, uitgeschreven in licht, dat van betekenis verandert door een kleine ingreep. Doordat een deel van haar tekst ‘All the Light You See is From the Past’ af en toe uitgaat, maakt ze de boodschap nog simpeler: ‘All You See is Past’ – álles wat je ziet ligt tenslotte al achter ons. All the Light You See is daarmee een memento mori (Latijns voor ‘gedenk te sterven’), een kunstwerk dat ons eraan herinnert dat óók wij over niet al te lange tijd tot het verleden zullen behoren.\n\nNet als een neonreclame (vooral populair tussen 1920 en 1960, denk aan Las Vegas) trekt dit tekstwerk gelijk je aandacht, maar Eggert gebruikt die niet om je een product of een dienst te verkopen. Ze hoopt je bewust te maken van de enorme hoeveelheid licht die jou voortdurend vanuit allerlei hoeken bereikt, en je overlaadt met informatie.",
		image: "https://www.amsterdamlightfestival.com/storage/artworks/November2019/All-the-Light-you-See-header.jpg",
		artist: Artist(
			id: 246,
			image: "https://amsterdamlightfestival.com/storage/artists/September2019/Ad6OajkOysbAbN76KPJL.jpg",
			name: "Alicia Eggert",
			information: "De Amerikaanse Alicia Eggert (1981) is een interdisciplinaire kunstenaar die woont en werkt in Texas. Ze is afgestudeerd als beeldhouwer aan de Alfred University in New York en onderzoekt in haar werk altijd de relatie tussen taal, beeld en tijd. Woorden en stellingen gebruikt ze in haar installaties als gevonden objecten, en schrijft deze vaak uit met lampjes of neonlicht. Ook werkt Eggert als universitair docent en coördinator van de afdeling beeldhouwkunst aan de University of North Texas in Denton."))
	]
}
