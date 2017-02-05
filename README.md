## Welcome to GitHub Pages
类似京东淘宝排序筛选

调用方法很简单：

    - (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *titlesArr = @[@[@"综合排序",@"新品优先",@"评论数从高到低"],
                           @[@"品牌",@"国内品牌",@"国际品牌"],
                           @[@"颜色",@"黑色",@"黄色",@"白色",@"蓝色"]];
    
    XMDropDownChooseView *chooseView = [[XMDropDownChooseView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 40) dataArr:titlesArr delegate:self];
    chooseView.titleColor = [UIColor redColor];
    [self.view addSubview:chooseView];
    }


    -(void)choosedAtSection:(NSInteger)section index:(NSInteger)index
    {
    NSLog(@"section:%lu------index:%lu",section,index);
    }
