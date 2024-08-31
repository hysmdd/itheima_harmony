interface Car {
  name: string
}

interface Person {
  name: string,
  car: Car
}

@Entry
@Component
struct Index {
  // 状态变量
  // 1. string number boolean 可以直接监视到变化
  @State message: string = '终会与你同行'
  @State person: Person = {
    name: '邓恩熙',
    car: {
      name: '迈巴赫S480'
    }
  }

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .margin(20)
      Button('改message')
        .onClick(() => {
          this.message = '晴天突然下起大雨'
        })

      Text(JSON.stringify(this.person)).margin(20)
      Button('改person')
        .onClick(() => {
          // this.person = {
          //   name: '白敬亭',
          //   car: {
          //     name: '奔驰S450'
          //   }
          // }

          // this.person.name = '白敬亭'

          // this.person.car.name = '奥迪A6L'
          // console.log("car name", this.person.car.name)

          this.person.car = {
            name: '奥迪A6L'
          }

        })
    }
    .width('100%')
  }
}

