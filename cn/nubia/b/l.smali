.class Lcn/nubia/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field private bpO:Lcn/nubia/b/a;

.field private bpP:Z

.field final synthetic bpQ:Lcn/nubia/b/k;


# direct methods
.method public constructor <init>(Lcn/nubia/b/k;)V
    .registers 3

    .prologue
    .line 173
    iput-object p1, p0, Lcn/nubia/b/l;->bpQ:Lcn/nubia/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/b/l;->bpO:Lcn/nubia/b/a;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/b/l;->bpP:Z

    .line 174
    invoke-static {p1}, Lcn/nubia/b/k;->bMo(Lcn/nubia/b/k;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/b/l;->bpP:Z

    .line 175
    invoke-static {p1}, Lcn/nubia/b/k;->bMn(Lcn/nubia/b/k;)Lcn/nubia/b/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/l;->bpO:Lcn/nubia/b/a;

    .line 173
    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 5

    .prologue
    .line 179
    iget-object v0, p0, Lcn/nubia/b/l;->bpO:Lcn/nubia/b/a;

    iget-boolean v1, p0, Lcn/nubia/b/l;->bpP:Z

    invoke-interface {v0, p1, v1}, Lcn/nubia/b/a;->bKY(Landroid/net/Uri;Z)V

    .line 178
    return-void
.end method
