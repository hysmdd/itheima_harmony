@Component
struct SonComponent {
  @Prop
  sCar: string = ''
  changeCar = (newCar: string) => {}

  build() {
    Column() {
      Text(`子组件 - ${this.sCar}`)

      Button('换车')
        .onClick(() => {
          // 1. prop传值 -> 单向传递
          // 自组件，可以修改 prop 传值，但是修改的更新不会同步到父组件
          // 通常不会直接修改prop传值，父组件的状态一旦更新，会自动向下同步
          // 修改就被覆盖了
          // this.sCar = '奥迪A8L'

          // 2. 如果实在想更新，希望保证父子同步  => 调用父组件传递过来的方法
          this.changeCar('法拉利SF90')
        })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}

@Entry
@Component
struct FatherComponent {
  @State fcar: string = '迈巴赫S480'

  build() {
    Column({ space: 10 }) {
      Text(`父组件 - ${this.fcar}`)

      Button('换车')
        .onClick(() => {
          this.fcar = '迈巴赫S680'
        })

      SonComponent({
        sCar: this.fcar,
        changeCar: (newCar: string) => {
          this.fcar = newCar
        }
      })
    }
    .padding(50)
    .backgroundColor(Color.Pink)
  }
}

