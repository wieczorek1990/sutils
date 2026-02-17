let SEPARATOR = " "

let arguments = CommandLine.arguments.dropFirst()
let joined = arguments.joined(separator: SEPARATOR)

print(joined)
