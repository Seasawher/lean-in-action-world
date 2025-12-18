module

namespace Input

/-- `who-to-greet`という入力を取得する -/
public def whoToGreet : IO String := do
  match (← IO.getEnv "INPUT_WHO_TO_GREET") with
  | some input => return input
  | none =>
    throw <| IO.userError "'who-to-greet'が渡されていません。"

end Input
