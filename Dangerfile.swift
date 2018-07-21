import Danger
import DangerSwiftLint // package: git@github.com:ashfurrow/danger-swiftlint.git

let danger = Danger()
SwiftLint.lint(inline: true, directory: "Sources", configFile: ".swiftlint.yml")
