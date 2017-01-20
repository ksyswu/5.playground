//튜플은 가로로된 값의 묶음...?
//deligate 는 위임하다는 뜻  색션의 개수, 로우의 개수 
//qa,test,시나리오가있는테스트는 화이트테스트(uitest) 코드상에서  func testSample()을 통해 테스트하면 코드가 쌓임

func sum(value1:Int, value2:Int)-> Int{
    return value1+value2
}
sum(value1:10,value2:10)

func multiply(value1:Int, value2:Int) ->Int{
    return value1 * value2
}

//firt-class citizen type  리턴밸류로 함수를 사용할 수 있음
func makeIncrementer() -> ((Int) -> Int){//함수 안에 함수 
    //리턴이 있기에 리턴 밸류명시해야함 -> 
    //(Int)인자->Int 함수
    
    
    func addOne(number:Int) -> Int{
        return number + 1
    }
    return addOne //함수안에 있는 함수 그자체를 반환할 수 있음
}

makeIncrementer()(7)

//위의 한줄이 아래의 2문장과 같은것
var increments = makeIncrementer() //함수의 결과물,리턴밸류를 increments에 담음 즉 addOne
increments(7)

func hasAnyMatches(list:[Int], condition:(Int)->Bool)-> Bool{
    //배열로 숫자목록을 가져오고 인자가 배열 판단기준 컨디션, 인수를 숫자 결과는 불리언
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func hasLuckyNumber7(value:Int)->Bool{
    if value == 7{
        return true
    }
    return false
}

let numbers = [1,3,5,7,9]

hasAnyMatches(list: numbers, condition: hasLuckyNumber7)
//리스트 배열을 넘기고 컨디션 함수를 넘긴것 따라서 넘버즈에따라 포문을 돌어검


func 짝수니(source:Int)->Bool{
    if source % 2 == 0{
        return true
    }
    return false
}

hasAnyMatches(list: numbers, condition: 짝수니)


















