# QUIExt
快速生成UI

基础的创建方式
    
    UIView * subView = UIView.new;
    subView.frame = CGRectMake(20, 70, 200, 200);
    [self.view addSubview:subView];

调整后的方式

    创建5个View
    [subView q_addSubitems:q_vn(5)];
    设置对应布局
    [subView q_subkey:q_vk(i)].frame = CGRectMake((i%5)*mw, (i/5)*mw, mw, mw);





统一创建、获取方式

    ///添加内容
    //格式1字符串、q_*n+数量/q_view_*h/q_*kf
    //格式2数组、[格式1]
    -(void)q_addSubitems:(id)item;
    
    /// 根据名字获取元素
    /// @param name 通过 数组 q_*k+下标生成 单个直接用q_view_*h/或者
    -(UIView *)q_subkey:(NSString *)name;
    
    
根据不同的具体类型(image、button、label等)设置对应的属性和方法

    ///例如UIView+Label可扩展
    
    ///文字
    @property(nonatomic)NSString * ql_text;
    ///行数
    @property(nonatomic)int ql_line;
    ///对齐
    @property(nonatomic)NSTextAlignment ql_alignment;
    ///颜色
    @property(nonatomic)UIColor * ql_color;
    ///字体
    @property(nonatomic)UIFont * ql_font;
    ///富文本
    @property(nonatomic)NSAttributedString * ql_att;
    
    ///UIView+Image可扩展
    ///获取图片
    @property(nonatomic,readonly)UIImage * qi_img;
    ///设置图片
    @property(nonatomic)NSString * qi_icon;
    ///填充方式
    @property(nonatomic)UIViewContentMode qi_mode;
    
    ///其他的控件可以按照模板自行添加
    
