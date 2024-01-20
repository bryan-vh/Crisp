# Crisp

Crisp is a customizable, themeable set of UI components for use with SwiftUI. All of these components are built on top of Apple's native UI components for SwiftUI. By updating the `Theme` for your app, you can easily design and change all the components in your app at will. Crisp is designed to serve as an opinionated design that complies with Apple's HIG.

## Theme

To configure the major parts of your app's design with Crisp, you can create your own `Theme` instance. An easy way to do this is to extend the `Theme` class and create a `static` instance of the class with your desired settings.

```swift
extension Theme {
    static let myTheme = Theme(
        shape: AnyShape(.capsule)),
        primaryForeground: .primary,
        secondaryForeground: .secondary,
        primaryBackground: Color(uiColor: .systemBackground),
        secondaryBackground: Color(uiColor: .secondarySystemBackground),
        typography: Typography(
            badge: .headline,
            input: .headline,
            button: .headline,
            heading: Typography.Heading(
                h1: .title,
                h2: .title2,
                h3: .title3
            ),
            text: Typography.Text(
                l: .headline,
                m: .body,
                s: .footnote,
                xs: .caption
            )
        )
    )
}
```

Once you've created your `Theme` instance, you can go ahead and inject this into your SwiftUI app via the environment property `theme`. An easy way to do that is like this:

```swift
struct ContentView: View {
    var body: some View {
        VStack()
            .environment(\.theme, .myTheme)
    }
}
```

## Button

## Badge

## Input

## Heading

## Text
