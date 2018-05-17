.class public Lcom/android/common/setting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Tg:[Ljava/lang/Class;

.field private static final Th:Ljava/lang/String;

.field private static final Tk:Ljava/util/HashMap;


# instance fields
.field private Ti:Landroid/content/Context;

.field private Tj:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const-class v0, Lcom/android/common/setting/a;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@57
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@20
    nop

    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/common/setting/a;->Th:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/content/SharedPreferences;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 42
    sput-object v0, Lcom/android/common/setting/a;->Tg:[Ljava/lang/Class;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    sput-object v0, Lcom/android/common/setting/a;->Tk:Ljava/util/HashMap;

    .line 38
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/common/setting/a;->Ti:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private SU(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/common/setting/q;
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/common/setting/a;->Ti:Landroid/content/Context;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/android/common/setting/a;->Tj:Landroid/content/SharedPreferences;

    aput-object v0, v2, v6

    .line 96
    :try_start_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_1d
    if-eq v0, v5, :cond_61

    .line 98
    if-eq v0, v6, :cond_26

    .line 97
    :cond_21
    :goto_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1d

    .line 99
    :cond_26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/common/setting/a;->SW(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/common/setting/q;

    move-result-object v3

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v0, v4, :cond_50

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_3b
    if-le v0, v5, :cond_21

    .line 108
    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    invoke-virtual {v0, v3}, Lcom/android/common/setting/PreferenceGroup;->YW(Lcom/android/common/setting/q;)V
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_48} :catch_56

    goto :goto_21

    .line 116
    :catch_49
    move-exception v0

    .line 117
    new-instance v1, Landroid/view/InflateException;

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 105
    :cond_50
    add-int/lit8 v4, v0, -0x1

    :try_start_52
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_55} :catch_49
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_3b

    .line 118
    :catch_56
    move-exception v0

    .line 119
    new-instance v1, Landroid/view/InflateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :cond_61
    :try_start_61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_70

    .line 113
    new-instance v0, Landroid/view/InflateException;

    const-string/jumbo v1, "No root element found"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_70
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/q;
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_77} :catch_49
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_77} :catch_56

    return-object v0
.end method

.method private SW(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/common/setting/q;
    .registers 8

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/setting/a;->Th:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-object v0, Lcom/android/common/setting/a;->Tk:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 72
    if-nez v0, :cond_39

    .line 75
    :try_start_24
    iget-object v0, p0, Lcom/android/common/setting/a;->Ti:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    sget-object v2, Lcom/android/common/setting/a;->Tg:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    sget-object v2, Lcom/android/common/setting/a;->Tk:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_39
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/q;
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_3f} :catch_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_3f} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40

    return-object v0

    .line 84
    :catch_40
    move-exception v0

    .line 85
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "While create instance of"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 82
    :catch_5b
    move-exception v0

    .line 83
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 80
    :catch_76
    move-exception v0

    .line 81
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public SV(ILandroid/content/SharedPreferences;)Lcom/android/common/setting/q;
    .registers 4

    .prologue
    .line 64
    iput-object p2, p0, Lcom/android/common/setting/a;->Tj:Landroid/content/SharedPreferences;

    .line 65
    iget-object v0, p0, Lcom/android/common/setting/a;->Ti:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/setting/a;->SU(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/common/setting/q;

    move-result-object v0

    return-object v0
.end method
