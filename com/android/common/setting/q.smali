.class public abstract Lcom/android/common/setting/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Uw:Landroid/content/Context;

.field private Ux:Landroid/content/SharedPreferences;

.field private final Uy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/common/setting/q;->Uw:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/android/common/setting/q;->Ux:Landroid/content/SharedPreferences;

    .line 48
    sget-object v0, Lcom/android/camera/k;->apf:[I

    .line 47
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/setting/q;->Uy:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract VB()V
.end method

.method public Yu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/common/setting/q;->Uy:Ljava/lang/String;

    return-object v0
.end method

.method public Yv()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/common/setting/q;->Ux:Landroid/content/SharedPreferences;

    return-object v0
.end method
