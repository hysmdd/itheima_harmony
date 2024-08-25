@Entry
@Component
struct Index {
  build() {
    Column({space: 10}) {
      Text('待完善')
        .padding(5)
        .border({
          width: 1,
          color: Color.Red,
          style: BorderStyle.Solid
        })

        Text('单边框')
          .padding(5)
          .border({
            width: {
              left: 1,
              right: 2
            },
            color: {
              left: Color.Red,
              right: Color.Green
            },
            style: {
              left: BorderStyle.Dotted,
              right: BorderStyle.Dashed
            }
          })
    }
    .padding(20)
  }
}