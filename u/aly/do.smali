.class public Lu/aly/do;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private bBe:Landroid/content/SharedPreferences;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "umeng_event_snapshot"

    .line 13
    iput-object v0, p0, Lu/aly/do;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/do;->b:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    const-string/jumbo v0, "umeng_event_snapshot"

    .line 20
    invoke-static {p1, v0}, Lu/aly/cr;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lu/aly/do;->bBe:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method private caV(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 85
    :goto_a
    iget-object v1, p0, Lu/aly/do;->bBe:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void

    .line 76
    :cond_18
    iget-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    :goto_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_2c

    .line 82
    invoke-static {v0}, Lu/aly/bw;->bWd(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 79
    :cond_2c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20
.end method

.method private caW(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 99
    iget-object v0, p0, Lu/aly/do;->bBe:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-nez v0, :cond_15

    .line 109
    :cond_13
    return v2

    .line 96
    :cond_14
    return v3

    .line 102
    :cond_15
    invoke-static {v0}, Lu/aly/bw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    if-eqz v0, :cond_13

    .line 104
    iget-object v1, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return v3
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 24
    iput-boolean p1, p0, Lu/aly/do;->b:Z

    .line 25
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ae;
    .registers 5

    .prologue
    .line 54
    iget-boolean v0, p0, Lu/aly/do;->b:Z

    if-nez v0, :cond_13

    :goto_4
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    move-object v0, v1

    .line 66
    :goto_e
    iget-boolean v1, p0, Lu/aly/do;->b:Z

    if-nez v1, :cond_34

    .line 70
    :goto_12
    return-object v0

    .line 55
    :cond_13
    invoke-direct {p0, p1}, Lu/aly/do;->caW(Ljava/lang/String;)Z

    goto :goto_4

    .line 60
    :cond_17
    iget-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_27

    move-object v0, v1

    goto :goto_e

    .line 62
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ae;

    goto :goto_e

    .line 67
    :cond_34
    invoke-direct {p0, p1}, Lu/aly/do;->caV(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public caU(Ljava/lang/String;Lu/aly/ae;)V
    .registers 5

    .prologue
    .line 36
    iget-boolean v0, p0, Lu/aly/do;->b:Z

    if-nez v0, :cond_1e

    .line 40
    :goto_4
    iget-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_19
    iget-boolean v0, p0, Lu/aly/do;->b:Z

    if-nez v0, :cond_2e

    .line 51
    :goto_1d
    return-void

    .line 37
    :cond_1e
    invoke-direct {p0, p1}, Lu/aly/do;->caW(Ljava/lang/String;)Z

    goto :goto_4

    .line 41
    :cond_22
    iget-object v0, p0, Lu/aly/do;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 49
    :cond_2e
    invoke-direct {p0, p1}, Lu/aly/do;->caV(Ljava/lang/String;)V

    goto :goto_1d
.end method
