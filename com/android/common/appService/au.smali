.class final Lcom/android/common/appService/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nA:I

.field final synthetic nB:I

.field final synthetic nC:I

.field final synthetic nD:I

.field final synthetic nE:I

.field final synthetic nF:I

.field final synthetic nw:Lcom/android/common/appService/R;

.field final synthetic nx:Lcom/android/common/appService/S;

.field final synthetic ny:I

.field final synthetic nz:I


# direct methods
.method constructor <init>(Lcom/android/common/appService/R;Lcom/android/common/appService/S;IIIIIIII)V
    .registers 11

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/common/appService/au;->nw:Lcom/android/common/appService/R;

    iput-object p2, p0, Lcom/android/common/appService/au;->nx:Lcom/android/common/appService/S;

    iput p3, p0, Lcom/android/common/appService/au;->ny:I

    iput p4, p0, Lcom/android/common/appService/au;->nz:I

    iput p5, p0, Lcom/android/common/appService/au;->nA:I

    iput p6, p0, Lcom/android/common/appService/au;->nB:I

    iput p7, p0, Lcom/android/common/appService/au;->nC:I

    iput p8, p0, Lcom/android/common/appService/au;->nD:I

    iput p9, p0, Lcom/android/common/appService/au;->nE:I

    iput p10, p0, Lcom/android/common/appService/au;->nF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/common/appService/au;->nw:Lcom/android/common/appService/R;

    invoke-static {v0}, Lcom/android/common/appService/R;->oG(Lcom/android/common/appService/R;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/au;->nx:Lcom/android/common/appService/S;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 185
    iget-object v0, p0, Lcom/android/common/appService/au;->nx:Lcom/android/common/appService/S;

    iget-object v1, p0, Lcom/android/common/appService/au;->nw:Lcom/android/common/appService/R;

    .line 186
    iget v2, p0, Lcom/android/common/appService/au;->ny:I

    iget v3, p0, Lcom/android/common/appService/au;->nz:I

    iget v4, p0, Lcom/android/common/appService/au;->nA:I

    iget v5, p0, Lcom/android/common/appService/au;->nB:I

    .line 187
    iget v6, p0, Lcom/android/common/appService/au;->nC:I

    iget v7, p0, Lcom/android/common/appService/au;->nD:I

    iget v8, p0, Lcom/android/common/appService/au;->nE:I

    iget v9, p0, Lcom/android/common/appService/au;->nF:I

    .line 185
    invoke-interface/range {v0 .. v9}, Lcom/android/common/appService/S;->bc(Lcom/android/common/appService/R;IIIIIIII)V

    .line 183
    :cond_25
    return-void
.end method
