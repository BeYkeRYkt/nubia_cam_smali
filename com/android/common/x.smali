.class Lcom/android/common/x;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static aiO:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 576
    sput-object p1, Lcom/android/common/x;->aiO:Landroid/content/res/Resources;

    .line 575
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 580
    sget-object v0, Lcom/android/common/x;->aiO:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/android/common/w;->arX(Landroid/content/res/Resources;)V

    .line 579
    return-void
.end method
