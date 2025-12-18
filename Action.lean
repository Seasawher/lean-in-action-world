module

import Action.Input

/-- `time` 出力用に UTC の ISO8601 文字列を作る。 -/
def utcIsoTime : IO String := do
  let out ← IO.Process.output { cmd := "date", args := #["-u", "+%Y-%m-%dT%H:%M:%SZ"] }
  pure out.stdout.trimAscii.toString

/-- エントリーポイント -/
public def main (_ : List String) : IO Unit := do
  let whoToGreet ← Input.whoToGreet
  IO.println s!"Hello {whoToGreet}!"
