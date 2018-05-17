.class Lcom/android/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aop:Ljava/lang/String;

.field aoq:Lcom/android/common/appService/CameraMember;

.field final synthetic aor:Lcom/android/camera/a;


# direct methods
.method public constructor <init>(Lcom/android/camera/a;Lcom/android/common/appService/CameraMember;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/camera/c;->aor:Lcom/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/android/camera/c;->aoq:Lcom/android/common/appService/CameraMember;

    .line 722
    iput-object p3, p0, Lcom/android/camera/c;->aop:Ljava/lang/String;

    .line 720
    return-void
.end method
