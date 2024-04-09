/*The power function */
func pow(base: Double, radix: Int) -> Double {
  var i = 0
  while i < radix {
    base = base * base
    i++
  }
  return base
}

/*The future value function */
func futureValue(x: Double, i: Double, n: Int, comp: String) -> Double {
  let fv = (x * pow(1 + i, n) - x) / i
  switch comp {
    case "monthly":
      n = n * 12
      i = (i / 100) / 12
    case "quarterly":
      n = n * 4
      i = (i / 100) / 4
    case "half-yearly", "biennial":
      n = n * 2
      i = (i / 100) / 2
    default:
      n = n * 1
      i = i / 100
  }
  return fv
}
