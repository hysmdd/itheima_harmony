@Component
struct NumberComponent {

  @Prop
  num: number = 1
  increase = () => {}
  decrease = () => {}

  build() {
    Row({ space: 5 }) {
      Button('-')
        .onClick(() => {
          this.decrease()
        })
      Text(this.num.toString())
      Button('+')
        .onClick(() => {
          this.increase()
        })
    }
  }
}

@Entry
@Component
struct Index {

  @State num1: number = 5
  @State num2: number = 3

  build() {
    Column({ space: 10 }) {
      Row({ space: 10 }) {
        Text('百叶')
        NumberComponent({
          num: this.num1,
          increase: () => {
            this.num1++
          },
          decrease: () => {
            if (this.num1 > 1) {
              this.num1--
            }
          }
        })
      }

      Row({ space: 10 }) {
        Text('千张')
        NumberComponent({
          num: this.num2,
          increase: () => {
            this.num2++
          },
          decrease: () => {
            if (this.num2 > 1) {
              this.num2--
            }
          }
        })
      }
    }
    .padding(10)
  }
}