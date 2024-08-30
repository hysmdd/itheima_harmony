// 多个泛型变量 => 传递多个类型参数
function fn<T1, T2>(param1: T1, param2: T2) {
  console.log("参数1", param1)
  console.log("参数2", param2)
}

fn<string, boolean>('邓恩熙', true)
fn<number, string>(19, '邓恩熙')

@Entry
@Component
struct Index {
  build() {
  }
}