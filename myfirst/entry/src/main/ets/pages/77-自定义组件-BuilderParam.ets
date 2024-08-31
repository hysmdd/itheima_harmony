@Component
struct SonComponent {

  // 1. 定义构造函数
  @BuilderParam ContentBuilder: () => void = this.defaultBuilder

  @Builder
  defaultBuilder() {
    Text('默认的内容')
  }

  build() {
    Column() {
      this.ContentBuilder()
    }
  }
}

@Entry
@Component
struct Index {
  build() {
    Column() {
      SonComponent()

      SonComponent() {
        Button('传入的结构')
      }
    }
  }
}

