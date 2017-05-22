//
//  ViewController.m
//  HeadfirstTest
//
//  Created by 王涛 on 2017/4/20.
//  Copyright © 2017年 王涛. All rights reserved.
//

#import "ViewController.h"
#import "StrategyPattern.h"
#import "CurrentConditionsDisplay.h"
#import "WeatherData.h"
#import "Beverage.h"
#import "Espresso.h"
#import "HouseBlend.h"
#import "Mocha.h"
#import "Whip.h"
#import "SimplePizzaFactory.h"
#import "ChicagoStylePizzaStore.h"
#import "NYStylePizzaStore.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "Light.h"
#import "SimpleRemoteControl.h"
#import "HomeTheaterFacade.h"
#import "Tea.h"
#import "Coffee.h"
#import "DinerMenu.h"
#import "PancakeMenu.h"
#import "Waitress.h"
#import "WaitressV2.h"
#import "Menu.h"
#import "MenuItemV2.h"
#import "ProxyPursuit.h"
#import "Girl.h"
#import "Pursuit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //策略模式
    //[self strategyPatternTest];
    //观察者模式
    //[self observerPatternTest];
    //装饰者模式
    //[self decoratorPatternTest];
    //工厂模式
    [self factoryMethodPatternTest];
    //命令模式
    //[self commandPatternTest];
    //外观模式
    //[self facadePatternTest];
    //模板方法模式
    //[self templateMethodPatternTest];
    //迭代器模式
    //[self iteratorPatternTest];
    //组合模式
    //[self compositePatternTest];
    //代理模式
    [self proxyPatternTest];
}

//策略模式
- (void)strategyPatternTest {
    FlyBehavior *flyWithWings = [FlyWithWings new];
    FlyBehavior *flyNoWay = [FlyNoWay new];
    
    QuackBehavior *muteQuack = [MuteQuack new];
    QuackBehavior *squeak = [Squeak new];
    QuackBehavior *quack = [Quack new];
    
    Duck *mallardDuck = [MallardDuck new];
    [mallardDuck setFlyBehavior:flyWithWings];
    [mallardDuck setQuackBehavior:quack];
    [mallardDuck display];
    [mallardDuck performQuackBehavior];
    [mallardDuck performFlyBehavior];
    
    Duck *redHeadDuck = [RedHeadDuck new];
    [redHeadDuck setFlyBehavior:flyNoWay];
    [redHeadDuck setQuackBehavior:squeak];
    [redHeadDuck display];
    [redHeadDuck performQuackBehavior];
    [redHeadDuck performFlyBehavior];

}

//观察者模式
- (void)observerPatternTest {
    WeatherData *weatherData = [WeatherData new];
    CurrentConditionsDisplay *display = [[CurrentConditionsDisplay alloc] initWith:weatherData];
    //注册观察者
    [weatherData registerObsever:display];
    //天气变化
    [weatherData setMeasurementsWithTemp:30 humidity:80 pressure:100];
}

//装饰者模式
- (void)decoratorPatternTest {
    //点浓缩咖啡
    Beverage *beverage = [Espresso new];
    NSLog(@"\n%@  价格：%f",beverage.getDescription,beverage.cost);
    
    //加两份摩卡
    beverage = [[Mocha alloc] initWith:beverage];
    beverage = [[Mocha alloc] initWith:beverage];
    beverage = [[Whip alloc] initWith:beverage];
    NSLog(@"\n%@  价格：%f",beverage.getDescription,beverage.cost);
    
    Beverage *beverage2 = [HouseBlend new];
    beverage2 = [[Whip alloc] initWith:beverage2];
    NSLog(@"\n%@  价格：%f",beverage2.getDescription,beverage2.cost);
    
}

//工厂模式
- (void)factoryMethodPatternTest {
    //简单工厂模式
//    SimplePizzaFactory *factory = [SimplePizzaFactory new];
//    PizzaStore *pizzaStore = [[PizzaStore alloc] initWith:factory];
//    [pizzaStore orderPizza:@"Cheese"];
    
    //工厂模式
    PizzaStore *nyStore = [NYStylePizzaStore new];
    [nyStore orderPizza:@"Veggle"];
    PizzaStore *chStore = [ChicagoStylePizzaStore new];
    [chStore orderPizza:@"Cheese"];
    
}

//命令模式
- (void)commandPatternTest {
    //生成一个遥控器
    SimpleRemoteControl *remote = [SimpleRemoteControl new];
    Light *light = [Light new];
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWith:light];
    
    remote.slot = lightOnCommand;
    [remote buttonWasPressed];
    
}

//外观模式
- (void)facadePatternTest {
    Light *light = [Light new];
    Screen *screen = [Screen new];
    DvdPlayer *dvdPlayer = [DvdPlayer new];
    
    HomeTheaterFacade *homeTheater = [[HomeTheaterFacade alloc] initWithLight:light screen:screen dvdPlayer:dvdPlayer];
    [homeTheater watchMovie];
    [homeTheater endMovie];
}

//模板方法模式
- (void)templateMethodPatternTest {
    CaffeineBeverage *tea = [Tea new];
    CaffeineBeverage *coffee = [Coffee new];
    
    [tea prepareRecipe];
    [coffee prepareRecipe];
}

//迭代器模式
- (void)iteratorPatternTest {
    DinerMenu *dinerMenu = [DinerMenu new];
    PancakeMenu *pancakeMenu = [PancakeMenu new];
    Waitress *waitress = [[Waitress alloc] initWithDinerMenu:dinerMenu pancakeMenu:pancakeMenu];
    [waitress printMenu];
}

//组合模式
- (void)compositePatternTest {
    //创建饼类菜单
    MenuItemV2 *pancakeItem1 = [[MenuItemV2 alloc] initWith:@"鸡蛋饼"];
    MenuItemV2 *pancakeItem2 = [[MenuItemV2 alloc] initWith:@"煎饼"];
    MenuItemV2 *pancakeItem3 = [[MenuItemV2 alloc] initWith:@"牛肉馅饼"];
    
    Menu *pancakeMenu = [[Menu alloc] initWith:@"饼类菜单"];
    [pancakeMenu add:pancakeItem1];
    [pancakeMenu add:pancakeItem2];
    [pancakeMenu add:pancakeItem3];
    
    //创建早餐菜单
    Menu *breakfastMenu = [[Menu alloc] initWith:@"早餐菜单"];
    MenuItemV2 *breakfastItem1 = [[MenuItemV2 alloc] initWith:@"大米粥"];
    MenuItemV2 *breakfastItem2 = [[MenuItemV2 alloc] initWith:@"油条"];
    MenuItemV2 *breakfastItem3 = [[MenuItemV2 alloc] initWith:@"包子"];
    [breakfastMenu add:breakfastItem1];
    [breakfastMenu add:breakfastItem2];
    [breakfastMenu add:breakfastItem3];
    [breakfastMenu add:pancakeMenu]; //早餐包含饼菜单
    
    WaitressV2 *waitress = [[WaitressV2 alloc] initWith:breakfastMenu];
    [waitress printMenu];
    
}

//代理模式
- (void)proxyPatternTest {
    //有一个加王大可的美女
    Girl *mm = [Girl new];
    mm.name = @"王大可";
    //你想送礼又不敢，让别人帮你送
    ProxyPursuit *proxy = [[ProxyPursuit alloc] initWith:mm];//创建代理
    [proxy giveDolls];
    [proxy giveChocolate];
    [proxy giveFlowers];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
