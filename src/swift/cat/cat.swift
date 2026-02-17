import Foundation

var standardError = FileHandle.standardError

extension FileHandle: @retroactive TextOutputStream {
    public func write(_ string: String) {
        let data = Data(string.utf8)
        self.write(data)
    }
}

extension URL {
    func fileExist() -> Bool {
        FileManager.default.fileExists(atPath: self.path)
    }
}

func eprint(_ string: String) {
    print(string, to: &standardError)
}

let INDENTATION = "  "

let entries = CommandLine.arguments.dropFirst()
var failed: [String] = []
for entry in entries {
    let url = URL(filePath: entry)

    let fileExists = url.fileExist()
    guard fileExists else {
        failed.append(entry)
        continue
    }

    let isFile = (try url.resourceValues(forKeys: [.isRegularFileKey])).isRegularFile

    if fileExists && isFile! {
        let contents = try String(contentsOfFile: entry, encoding: .utf8)
        print(contents)
    } else {
        failed.append(entry)
        continue
    }
}

if failed.count > 0 {
    eprint("The following entries failed:")
    for failing in failed {
        eprint("\(INDENTATION)\(failing)")
    }
}
