//: Playground - noun: a place where people can play

protocol Bird {
	var name: String { get }
	var canFly: Bool { get }
}

protocol Flyable {
	var airspeedVelocity: Double { get }
}

struct FlappyBird: Bird, Flyable {
	let name: String
	let flappyAmplitude: Double
	let flappyFrequency: Double
	let canFly = true

	var airspeedVelocity: Double {
		return 3 * flappyFrequency * flappyAmplitude
	}
}

struct Penguin: Bird {
	let name: String
	let canFly = false
}

struct SwiftBird: Bird, Flyable {
	var name: String { return "Swift \(version)" }
	let version: Double
	let canFly = true

	// Swift is FAST!
	var airspeedVelocity: Double { return 2000.0 }
}

enum UnladenSwallow: Bird, Flyable {
	case African
	case European
	case Unknown

	var name: String {
		switch self {
		case .African:
			return "African"
		case .European:
			return "European"
		case .Unknown:
			return "What do you mean? African or European?"
		}
	}

	var airspeedVelocity: Double {
		switch self {
		case .African:
			return 10.0
		case .European:
			return 9.9
		case .Unknown:
			fatalError("You are thrown from the bridge of death!")
		}
	}
}