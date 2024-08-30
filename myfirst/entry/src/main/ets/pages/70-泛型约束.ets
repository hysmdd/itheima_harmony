// 泛型约束
interface ILength {
  length: number
}

function fn<T extends ILength>(param: T) {
  console.log('', param.length)
}

fn<string>('abc')
fn<number[]>([1, 2, 3, 4])

class Desk {
  length = 2
}

let d = new Desk()
fn<Desk>(d)

@Entry
@Component
struct Index {
  build() {
  }
}