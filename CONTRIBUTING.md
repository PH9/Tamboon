# Contributing Guide

Whoever wants to contribute to Tamboom please read this guide first.

## Swift Style Guide

Since Swift Language has many ways to write. So I propose these style guides to Tamboom iOS project. Please use in order if you cannot find rules.

- raywenderlich.com Swift Style [Guide](https://github.com/raywenderlich/swift-style-guide).
- Google's Swift Style [Guide](https://google.github.io/swift)
- Swift.org's [documentation](https://swift.org/documentation)

## Setup tools

The tools that Tamboom is using for keeping consistency in the codebase.

- [SwiftLint](https://github.com/realm/SwiftLint) does better in checking the
syntax but bad in auto-formatting.
- [SwiftFormat](https://github.com/nicklockwood/SwiftFormat) does best in
auto-formatting but cannot good at integrating with Xcode.
- ~~[Tailor](https://github.com/zalando/tailor)~~ Just want to give it the name
that I know, but don't use. It is slow, deprecated and suggests to use
SwiftLint instead 🤣.

Use may install via [brew](https://brew.sh). I already provide
[Brewfile](Brewfile) in the project after you installed brew. You can use a
simple command `brew bundle` to install needed tools.

Too avoid insonsistance in brew's dependencies so we also provide
`Brewfile.lock.json` into the project.
