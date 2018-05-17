.class final Lcom/android/common/ui/aM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic DN:Lcom/android/common/ui/F;

.field final synthetic DO:I


# direct methods
.method constructor <init>(Lcom/android/common/ui/F;I)V
    .registers 3

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/common/ui/aM;->DN:Lcom/android/common/ui/F;

    iput p2, p0, Lcom/android/common/ui/aM;->DO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 171
    new-instance v0, Lcom/android/common/ui/G;

    iget-object v1, p0, Lcom/android/common/ui/aM;->DN:Lcom/android/common/ui/F;

    iget-object v2, p0, Lcom/android/common/ui/aM;->DN:Lcom/android/common/ui/F;

    iget v3, p0, Lcom/android/common/ui/aM;->DO:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/common/ui/G;-><init>(Lcom/android/common/ui/F;Lcom/android/common/ui/F;Landroid/view/View;I)V

    .line 172
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 170
    return-void
.end method
