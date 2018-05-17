.class Lcom/android/common/setting/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Ut:[Ljava/lang/String;

.field Uu:I

.field final synthetic Uv:Lcom/android/common/setting/l;


# direct methods
.method public constructor <init>(Lcom/android/common/setting/l;)V
    .registers 3

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/common/setting/n;->Uv:Lcom/android/common/setting/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/setting/n;->Uu:I

    .line 1104
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/setting/n;->Ut:[Ljava/lang/String;

    .line 1102
    return-void
.end method
