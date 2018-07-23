import Foundation
import Danger
import DangerSwiftLint // package: https://github.com/ashfurrow/danger-swiftlint.git

let danger = Danger()

if danger.git.createdFiles.count + danger.git.modifiedFiles.count - danger.git.deletedFiles.count > 10 {
    warn("Big PR, try to keep changes smaller if you can")
}

// No dangerswiftlint for now
// SwiftLint.lint(inline: true, directory: "Tests", configFile: ".swiftlint.yml")
