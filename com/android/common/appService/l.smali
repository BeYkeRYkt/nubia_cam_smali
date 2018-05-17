.class public Lcom/android/common/appService/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hK:I

.field public hL:I

.field public hM:I

.field public hN:I

.field private hO:Landroid/content/Context;

.field private hP:Ljava/lang/Object;

.field private hQ:Ljava/lang/Object;

.field private hR:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/android/common/appService/l;->hK:I

    .line 23
    iput v0, p0, Lcom/android/common/appService/l;->hM:I

    .line 24
    iput v0, p0, Lcom/android/common/appService/l;->hL:I

    .line 25
    iput v0, p0, Lcom/android/common/appService/l;->hN:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/android/common/appService/l;->hO:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/android/common/appService/l;->jV()V

    .line 31
    invoke-virtual {p0}, Lcom/android/common/appService/l;->jU()V

    .line 28
    return-void
.end method

.method private jS()V
    .registers 7

    .prologue
    .line 128
    :try_start_0
    const-string/jumbo v0, "cn.nubia.edgegesture.EdgeGestureManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/common/appService/l;->hQ:Ljava/lang/Object;

    if-eqz v1, :cond_75

    if-eqz v0, :cond_75

    .line 130
    const-string/jumbo v1, "cn.nubia.edgegesture.EdgeGestureActions"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_75

    .line 132
    const-string/jumbo v1, "cn.nubia.edgegesture.EdgeGestureListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_75

    .line 134
    const-string/jumbo v2, "detect"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    const-string/jumbo v1, "ZOU"

    const-string/jumbo v2, "addEdgeDectect dectectMethod invoke"

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/common/appService/l;->hQ:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 138
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Integer;

    .line 139
    iget v4, p0, Lcom/android/common/appService/l;->hK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 140
    iget v4, p0, Lcom/android/common/appService/l;->hM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 141
    iget v4, p0, Lcom/android/common/appService/l;->hL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 142
    iget v4, p0, Lcom/android/common/appService/l;->hN:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 138
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 144
    iget-object v3, p0, Lcom/android/common/appService/l;->hP:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    .line 126
    :cond_75
    :goto_75
    return-void

    .line 148
    :catch_76
    move-exception v0

    .line 149
    const-string/jumbo v1, "ZOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addEdgeDectect Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75
.end method

.method private jT(I)V
    .registers 6

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/common/appService/l;->hO:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "nubia_edge_hold_tap"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "zou"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleEdgeGesture: settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 96
    const-string/jumbo v0, "zou"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEdgeGesture: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/m;

    .line 98
    if-eqz v0, :cond_56

    .line 99
    invoke-interface {v0, p1}, Lcom/android/common/appService/m;->ka(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_56

    .line 103
    :catch_68
    move-exception v0

    .line 104
    const-string/jumbo v0, "ZOU"

    const-string/jumbo v1, "handleEdgeGesture e"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_72
    return-void
.end method

.method private jV()V
    .registers 5

    .prologue
    .line 36
    :try_start_0
    const-string/jumbo v0, "cn.nubia.edgegesture.EdgeGestureActions"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "HOLD_AND_TAP_LEFT_TOP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/common/appService/l;->hK:I

    .line 40
    const-string/jumbo v1, "HOLD_AND_TAP_LEFT_BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/common/appService/l;->hM:I

    .line 43
    const-string/jumbo v1, "HOLD_AND_TAP_RIGHT_TOP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/common/appService/l;->hL:I

    .line 46
    const-string/jumbo v1, "HOLD_AND_TAP_RIGHT_BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/l;->hN:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    .line 34
    :goto_4b
    return-void

    .line 49
    :catch_4c
    move-exception v0

    .line 50
    const-string/jumbo v1, "ZOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initTapValue e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private jW()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 172
    :try_start_1
    const-string/jumbo v0, "nubia.os.edge.EdgeFeatureConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "isEdgeFeatureEnable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_3a
    .catchall {:try_start_1 .. :try_end_1e} :catchall_70

    move-result v0

    .line 178
    const-string/jumbo v1, "ZOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEdgeFeatureEnable enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v0

    .line 175
    :catch_3a
    move-exception v0

    .line 176
    :try_start_3b
    const-string/jumbo v1, "ZOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEdgeFeatureEnable e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_70

    .line 178
    const-string/jumbo v0, "ZOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEdgeFeatureEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v4

    .line 177
    :catchall_70
    move-exception v0

    .line 178
    const-string/jumbo v0, "ZOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEdgeFeatureEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v4
.end method

.method private jX()V
    .registers 6

    .prologue
    .line 157
    :try_start_0
    const-string/jumbo v0, "cn.nubia.edgegesture.EdgeGestureManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "cn.nubia.edgegesture.EdgeGestureListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/android/common/appService/l;->hQ:Ljava/lang/Object;

    if-eqz v2, :cond_39

    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 160
    const-string/jumbo v2, "unDetect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "ZOU"

    const-string/jumbo v2, "removeEdgeDetect unDetectMethod invoke"

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/common/appService/l;->hQ:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/common/appService/l;->hP:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 155
    :cond_39
    :goto_39
    return-void

    .line 164
    :catch_3a
    move-exception v0

    .line 165
    const-string/jumbo v1, "ZOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeEdgeDetect Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method static synthetic jY(Lcom/android/common/appService/l;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/l;->jW()Z

    move-result v0

    return v0
.end method

.method static synthetic jZ(Lcom/android/common/appService/l;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/l;->jT(I)V

    return-void
.end method


# virtual methods
.method public jQ(Lcom/android/common/appService/m;)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    invoke-direct {p0}, Lcom/android/common/appService/l;->jS()V

    .line 112
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 113
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_18
    return-void
.end method

.method public jR(Lcom/android/common/appService/m;)V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 119
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/android/common/appService/l;->hR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 122
    invoke-direct {p0}, Lcom/android/common/appService/l;->jX()V

    .line 117
    :cond_18
    return-void
.end method

.method protected jU()V
    .registers 6

    .prologue
    .line 56
    :try_start_0
    const-string/jumbo v0, "cn.nubia.edgegesture.EdgeGestureManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_4a

    .line 58
    const-string/jumbo v1, "getDefaultManager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_4a

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/common/appService/l;->hO:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/l;->hQ:Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "cn.nubia.edgegesture.EdgeGestureListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_4a

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/common/appService/ag;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ag;-><init>(Lcom/android/common/appService/l;)V

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/l;->hP:Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 54
    :cond_4a
    :goto_4a
    return-void

    .line 85
    :catch_4b
    move-exception v0

    .line 86
    const-string/jumbo v1, "ZOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initEdgeGestureDectect Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method
