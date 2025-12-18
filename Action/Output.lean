module

open IO FS

/-- `name = value`という出力を設定する -/
public def setOutput (name value : String) : IO Unit := do
  match (← IO.getEnv "GITHUB_OUTPUT") with
  | some path =>
    withFile path Mode.append (fun h => h.putStr s!"{name}={value}\n")
  | none =>
    throw <| IO.userError "GITHUB_OUTPUT 環境変数が設定されていません。"
