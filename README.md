# ZipStripper Lite

Part of the **Free Vibe Coding Safety Tools** kit.

ZipStripper Lite makes a clean ZIP of your project.

It is for vibe coders who need to send a project to an AI tool, a friend, a client, or a second machine without sending junk.

It does not change your real project. It copies the safe files into a temp folder, then makes a new ZIP.

## Why Use This?

AI coding chats often choke on huge folders.

Your project may have:

- `node_modules`
- `.venv`
- build files
- caches
- logs
- old ZIPs
- secret `.env` files
- giant junk folders

ZipStripper Lite removes that stuff from the copy.

Your real project stays the same.

Use ZipStripper Lite before you upload or share a project folder.

## Fast Start

You need Python 3.10 or newer.

Open PowerShell in the ZipStripper Lite folder.

Run this:

```powershell
py -3 .\zip_stripper_lite.py "C:\Path\To\YourProject"
```

The clean ZIP goes here by default:

```text
Downloads\ZipStripperLite_Output
```

Send that new ZIP. Do not send your whole raw project folder.

## Best Mode For AI Coding

For most vibe coding handoffs, use the normal command:

```powershell
py -3 .\zip_stripper_lite.py "C:\Path\To\YourProject"
```

For source-only handoff, use:

```powershell
py -3 .\zip_stripper_lite.py "C:\Path\To\YourProject" --profile source
```

Use source-only when you want code, docs, config, and tests, but not app state or generated files.

## Use The GUI

If you do not want to type paths, run:

```powershell
.\ZipStripperLite-GUI.cmd
```

Pick your project folder. Pick where the clean ZIP should go.

You can also drag a project folder onto `ZipStripperLite-GUI.cmd`.

## What It Removes

By default, it removes common heavy or risky files:

- dependency folders like `node_modules`, `.venv`, and `vendor`
- caches
- logs
- build output
- generated binaries
- `.env` files
- nested ZIP files
- temp files

It keeps normal project files:

- source code
- docs
- tests
- config
- small useful examples

## What To Read After It Runs

Open the receipt next to the ZIP.

The receipt tells you:

- where the ZIP was saved
- what was kept
- what was removed
- how large the ZIP is

Read the receipt before you share the ZIP.

## Which Profile Should I Use?

**smart**

Default mode. Best for most handoffs.

**source**

Best when you only want source, docs, config, and tests.

**plain**

Simple rule mode. Use this only if you know you want less smart filtering.

## Add Project Rules

Put a `.zipstripperignore` file in your project root when one project needs its own rules.

Example:

```text
drop: state/**
drop: downloads/**
keep: fixtures/small_example.json
profile: source
target-mb: 80
max-zip-mb: 450
```

See [`.zipstripperignore.example`](.zipstripperignore.example).

## Install As A Command

```powershell
py -3 -m pip install .
zipstripper-lite "C:\Path\To\YourProject"
```

## Test It

```powershell
py -3 -m unittest discover -s tests -v
```

## Safety

ZipStripper Lite does not delete files from your project. It makes a clean copy, then zips that copy.

Still, check the receipt before sharing.

## License

MIT. See [LICENSE](LICENSE).
