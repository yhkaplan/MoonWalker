import Danger
import DangerSwiftLint // package: https://github.com/ashfurrow/DangerSwiftLint.git

let danger = Danger()
SwiftLint.lint(inline: true, directory: "Sources", configFile: ".swiftlint.yml")
