module

import Action.Input
import Action.Output

/-- エントリーポイント -/
public def main (_ : List String) : IO Unit := do
  let whoToGreet ← Input.whoToGreet
  IO.println s!"Hello {whoToGreet}!"

  let whoWasGreeted := whoToGreet ++ "-san"
  setOutput "who-was-greeted" whoWasGreeted
  IO.println s!"who-was-greetedは{whoWasGreeted}に設定されました。"
