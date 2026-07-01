# Repository Guidelines

## Project Structure & Module Organization

This is a single-module Android project. The root Gradle files (`settings.gradle`, `build.gradle`, `gradle.properties`) configure the build and include the `:app` module. App code and decompiled sources live under `app/src/main`: Java sources in `java/`, smali sources in `smali/`, Android resources in `res/`, packaged assets in `assets/`, and native libraries in `jniLibs/`. Original reverse-engineering inputs are kept in `app/original/`, and generated release artifacts are in `app/release/`.

## Build, Test, and Development Commands

Use the checked-in Gradle wrapper from the repository root.

- `.\gradlew.bat clean` removes build output.
- `.\gradlew.bat assembleDebug` builds a debug APK.
- `.\gradlew.bat assembleRelease` builds a release APK.
- `.\gradlew.bat lint` runs Android lint; release lint is configured not to abort builds.

Gradle 7.0.2 and Android Gradle Plugin 7.0.2 are used here. Use JDK 11; newer JVMs can fail with `Unsupported class file major version 61`.

## Coding Style & Naming Conventions

Keep Java source compatible with Java 8 (`sourceCompatibility` and `targetCompatibility` are both 1.8). Use 4-space indentation for Java, Gradle, XML, and smali edits. Preserve existing package paths when replacing or shadowing decompiled classes, for example `app/src/main/java/com/ecaree/ultra/Util.java`. Resource names should stay lowercase with underscores, such as `ic_moon_01.png` or `notification_bg.xml`.

## Testing Guidelines

No `test` or `androidTest` source sets are currently present. For code changes, run `.\gradlew.bat assembleDebug` at minimum and manually install or inspect the APK when behavior changes. Add focused tests under `app/src/test/` or `app/src/androidTest/` if introducing logic that can be isolated.

## Commit & Pull Request Guidelines

Recent commits use concise, intent-focused summaries, often with an emoji prefix and Chinese wording. Follow that style where practical: one change per commit, imperative summary, and mention build-impacting Gradle or smali changes explicitly.

Pull requests should include a brief description, affected paths, build command results, and screenshots or APK notes for visual watch-face changes. Call out changes to `app/original/`, `smali/`, `assets/`, or native libraries because they are harder to review.

## Security & Configuration Tips

Do not commit local keystores, signing credentials, or machine-specific Android Studio files. Keep dependency repositories and plugin versions intentional; this project relies on `Android-SmaliPlugin` and `Android-SmaliSdk` from JitPack.
