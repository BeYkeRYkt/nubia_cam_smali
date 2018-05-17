.class public Lcom/android/common/o/p;
.super Lcom/android/common/o/l;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private adT:Landroid/widget/ImageView;

.field private adU:Landroid/widget/TextView;

.field private adV:Landroid/widget/TextView;

.field private adW:Landroid/widget/RelativeLayout;

.field private adX:Landroid/animation/ObjectAnimator;

.field private adY:Ljava/lang/String;

.field private adZ:Landroid/widget/LinearLayout;

.field private aea:Lcom/android/common/o/q;

.field private aeb:Landroid/widget/ListView;

.field private aec:Landroid/animation/ObjectAnimator;

.field private aed:Lcom/android/common/ui/R;

.field private aee:Z

.field private aef:Z

.field private aeg:Z

.field private aeh:Lcom/android/common/ui/InterruptedRelativeLayout;

.field private aei:Landroid/widget/ListView;

.field private aej:Lcom/android/common/appService/M;

.field private aek:Lcom/android/common/o/p;

.field private ael:Landroid/widget/TextView;

.field private aem:Landroid/widget/Toast;

.field private aen:[Ljava/lang/String;

.field private aeo:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "MoreSettingsFragment"

    sput-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    .line 52
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/common/o/p;->aek:Lcom/android/common/o/p;

    .line 55
    iput-object v0, p0, Lcom/android/common/o/p;->aeh:Lcom/android/common/ui/InterruptedRelativeLayout;

    .line 56
    iput-object v0, p0, Lcom/android/common/o/p;->aei:Landroid/widget/ListView;

    .line 57
    iput-object v0, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    .line 58
    iput-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v0, p0, Lcom/android/common/o/p;->adV:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/android/common/o/p;->adU:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/android/common/o/p;->adT:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/android/common/o/p;->ael:Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    .line 64
    iput-object v0, p0, Lcom/android/common/o/p;->aea:Lcom/android/common/o/q;

    .line 65
    iput-object v0, p0, Lcom/android/common/o/p;->adY:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    .line 67
    iput-object v0, p0, Lcom/android/common/o/p;->aen:[Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/common/o/p;->aeg:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/common/o/p;->aee:Z

    .line 70
    iput-object v0, p0, Lcom/android/common/o/p;->aeo:Landroid/view/View;

    .line 74
    iput-object v0, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    .line 75
    iput-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    .line 76
    iput-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    .line 77
    iput-object v0, p0, Lcom/android/common/o/p;->aed:Lcom/android/common/ui/R;

    .line 105
    iput-boolean v1, p0, Lcom/android/common/o/p;->aef:Z

    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 54
    iput-object v0, p0, Lcom/android/common/o/p;->aek:Lcom/android/common/o/p;

    .line 55
    iput-object v0, p0, Lcom/android/common/o/p;->aeh:Lcom/android/common/ui/InterruptedRelativeLayout;

    .line 56
    iput-object v0, p0, Lcom/android/common/o/p;->aei:Landroid/widget/ListView;

    .line 57
    iput-object v0, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    .line 58
    iput-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v0, p0, Lcom/android/common/o/p;->adV:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/android/common/o/p;->adU:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/android/common/o/p;->adT:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/android/common/o/p;->ael:Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    .line 64
    iput-object v0, p0, Lcom/android/common/o/p;->aea:Lcom/android/common/o/q;

    .line 65
    iput-object v0, p0, Lcom/android/common/o/p;->adY:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    .line 67
    iput-object v0, p0, Lcom/android/common/o/p;->aen:[Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/common/o/p;->aeg:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/common/o/p;->aee:Z

    .line 70
    iput-object v0, p0, Lcom/android/common/o/p;->aeo:Landroid/view/View;

    .line 74
    iput-object v0, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    .line 75
    iput-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    .line 76
    iput-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    .line 77
    iput-object v0, p0, Lcom/android/common/o/p;->aed:Lcom/android/common/ui/R;

    .line 105
    iput-boolean v1, p0, Lcom/android/common/o/p;->aef:Z

    .line 83
    return-void
.end method

.method public static alY()Lcom/android/common/o/p;
    .registers 2

    .prologue
    .line 88
    new-instance v0, Lcom/android/common/o/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/o/p;-><init>(I)V

    return-object v0
.end method

.method static synthetic amA(Lcom/android/common/o/p;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/o/p;->amh(Ljava/lang/String;)V

    return-void
.end method

.method private amc()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 243
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideExpandListView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    if-nez v0, :cond_12

    .line 245
    :cond_11
    return-void

    .line 246
    :cond_12
    iput-object v2, p0, Lcom/android/common/o/p;->aea:Lcom/android/common/o/q;

    .line 247
    iget-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v0, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    .line 249
    iget-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/o/K;

    invoke-direct {v1, p0}, Lcom/android/common/o/K;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/o/L;

    invoke-direct {v1, p0}, Lcom/android/common/o/L;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 280
    iget-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 242
    return-void
.end method

.method private amd()V
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apz(Lcom/android/common/setting/PreferenceGroup;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/p;->aen:[Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/android/common/appService/M;

    invoke-virtual {p0}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    iget-object v3, p0, Lcom/android/common/o/p;->aen:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/common/appService/M;-><init>(Landroid/content/Context;Lcom/android/common/appService/W;[Ljava/lang/String;Lcom/android/common/o/p;)V

    iput-object v0, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    .line 127
    iget-object v0, p0, Lcom/android/common/o/p;->aeo:Landroid/view/View;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/common/o/p;->aei:Landroid/widget/ListView;

    .line 128
    iget-object v0, p0, Lcom/android/common/o/p;->aei:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/android/common/o/p;->aei:Landroid/widget/ListView;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 130
    iget-object v0, p0, Lcom/android/common/o/p;->aei:Landroid/widget/ListView;

    new-instance v1, Lcom/android/common/o/H;

    invoke-direct {v1, p0}, Lcom/android/common/o/H;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-void
.end method

.method private ame(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 284
    const v0, 0x7f10011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/InterruptedRelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/p;->aeh:Lcom/android/common/ui/InterruptedRelativeLayout;

    .line 285
    iget-object v0, p0, Lcom/android/common/o/p;->aeh:Lcom/android/common/ui/InterruptedRelativeLayout;

    new-instance v1, Lcom/android/common/o/M;

    invoke-direct {v1, p0}, Lcom/android/common/o/M;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/InterruptedRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/common/o/p;->aeh:Lcom/android/common/ui/InterruptedRelativeLayout;

    new-instance v1, Lcom/android/common/o/N;

    invoke-direct {v1, p0}, Lcom/android/common/o/N;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/InterruptedRelativeLayout;->xU(Lcom/android/common/ui/A;)V

    .line 304
    iget-boolean v0, p0, Lcom/android/common/o/p;->aeg:Z

    if-nez v0, :cond_26

    .line 305
    invoke-direct {p0}, Lcom/android/common/o/p;->amd()V

    .line 307
    :cond_26
    new-instance v1, Lcom/android/common/o/O;

    invoke-direct {v1, p0}, Lcom/android/common/o/O;-><init>(Lcom/android/common/o/p;)V

    .line 317
    new-instance v2, Lcom/android/common/o/P;

    invoke-direct {v2, p0}, Lcom/android/common/o/P;-><init>(Lcom/android/common/o/p;)V

    .line 335
    const v0, 0x7f10011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/p;->adU:Landroid/widget/TextView;

    .line 336
    iget-object v0, p0, Lcom/android/common/o/p;->adU:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/common/o/p;->adU:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/o/p;->adT:Landroid/widget/ImageView;

    .line 339
    iget-object v0, p0, Lcom/android/common/o/p;->adT:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/common/o/p;->adT:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    const v0, 0x7f100120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/p;->ael:Landroid/widget/TextView;

    .line 343
    iget-object v0, p0, Lcom/android/common/o/p;->ael:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/o/Q;

    invoke-direct {v1, p0}, Lcom/android/common/o/Q;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v0, 0x7f100119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    .line 368
    iget-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/common/o/R;

    invoke-direct {v1, p0}, Lcom/android/common/o/R;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    const v0, 0x7f10011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    .line 380
    iget-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    new-instance v1, Lcom/android/common/o/S;

    invoke-direct {v1, p0}, Lcom/android/common/o/S;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 410
    const v0, 0x7f10004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/p;->adV:Landroid/widget/TextView;

    .line 411
    iget-object v0, p0, Lcom/android/common/o/p;->adV:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/o/T;

    invoke-direct {v1, p0}, Lcom/android/common/o/T;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v0, 0x7f10011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    .line 419
    new-instance v0, Lcom/android/common/ui/R;

    iget-object v1, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/R;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/M;)V

    iput-object v0, p0, Lcom/android/common/o/p;->aed:Lcom/android/common/ui/R;

    .line 283
    return-void
.end method

.method private amh(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x80000000

    .line 199
    new-instance v0, Lcom/android/common/o/q;

    iget-object v1, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/common/o/q;-><init>(Lcom/android/common/o/p;Lcom/android/common/setting/ListPreference;)V

    iput-object v0, p0, Lcom/android/common/o/p;->aea:Lcom/android/common/o/q;

    .line 200
    iget-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/common/o/p;->aea:Lcom/android/common/o/q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/android/common/o/p;->aeb:Landroid/widget/ListView;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 202
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 203
    const v1, 0x1fffffff

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 205
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExpandLayout.getHeight()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/common/o/p;->adZ:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    .line 207
    iget-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/o/I;

    invoke-direct {v1, p0}, Lcom/android/common/o/I;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/o/J;

    invoke-direct {v1, p0}, Lcom/android/common/o/J;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 238
    iget-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e5c28f6    # 0.215f

    const v3, 0x3f1c28f6    # 0.61f

    const v4, 0x3eb5c28f    # 0.355f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 198
    return-void
.end method

.method static synthetic ami()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic amj(Lcom/android/common/o/p;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->adT:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic amk(Lcom/android/common/o/p;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->adU:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aml(Lcom/android/common/o/p;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic amm(Lcom/android/common/o/p;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->adX:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic amn(Lcom/android/common/o/p;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->adY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic amo(Lcom/android/common/o/p;)Lcom/android/common/o/q;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->aea:Lcom/android/common/o/q;

    return-object v0
.end method

.method static synthetic amp(Lcom/android/common/o/p;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->aec:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic amq(Lcom/android/common/o/p;)Lcom/android/common/ui/R;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->aed:Lcom/android/common/ui/R;

    return-object v0
.end method

.method static synthetic amr(Lcom/android/common/o/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/o/p;->aef:Z

    return v0
.end method

.method static synthetic ams(Lcom/android/common/o/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/o/p;->aeg:Z

    return v0
.end method

.method static synthetic amt(Lcom/android/common/o/p;)Lcom/android/common/appService/M;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    return-object v0
.end method

.method static synthetic amu(Lcom/android/common/o/p;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic amv(Lcom/android/common/o/p;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/o/p;->aen:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic amw(Lcom/android/common/o/p;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/common/o/p;->adY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic amx(Lcom/android/common/o/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/o/p;->aee:Z

    return p1
.end method

.method static synthetic amy(Lcom/android/common/o/p;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2

    iput-object p1, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic amz(Lcom/android/common/o/p;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/o/p;->amc()V

    return-void
.end method


# virtual methods
.method public akC()V
    .registers 3

    .prologue
    .line 159
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initAfterCameraOpen"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/android/common/o/p;->amd()V

    .line 158
    return-void
.end method

.method public alX()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/common/o/p;->aee:Z

    return v0
.end method

.method public alZ()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/common/o/p;->aed:Lcom/android/common/ui/R;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, Lcom/android/common/o/p;->aed:Lcom/android/common/ui/R;

    invoke-virtual {v0}, Lcom/android/common/ui/R;->BP()V

    .line 188
    :cond_9
    return-void
.end method

.method public ama(Z)V
    .registers 2

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/common/o/p;->aef:Z

    .line 106
    return-void
.end method

.method public amb()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 425
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Request Location permission"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    .line 426
    invoke-virtual {p0, v0, v3}, Lcom/android/common/o/p;->requestPermissions([Ljava/lang/String;I)V

    .line 422
    :cond_21
    return-void
.end method

.method public amf(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    .line 194
    return-void
.end method

.method public amg(Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/common/o/p;->aeg:Z

    .line 100
    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    if-eqz v0, :cond_9

    .line 462
    iget-object v0, p0, Lcom/android/common/o/p;->aej:Lcom/android/common/appService/M;

    invoke-virtual {v0}, Lcom/android/common/appService/M;->notifyDataSetChanged()V

    .line 464
    :cond_9
    iget-object v0, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apz(Lcom/android/common/setting/PreferenceGroup;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/p;->aen:[Ljava/lang/String;

    .line 460
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/common/o/p;->adW:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 94
    invoke-direct {p0}, Lcom/android/common/o/p;->amc()V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_12
    return v1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 7

    .prologue
    .line 526
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreateAnimator"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-nez p3, :cond_3e

    .line 528
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nextAnim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 531
    :cond_3e
    invoke-virtual {p0}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 532
    new-instance v1, Lcom/android/common/o/U;

    invoke-direct {v1, p0}, Lcom/android/common/o/U;-><init>(Lcom/android/common/o/p;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 114
    iget-boolean v0, p0, Lcom/android/common/o/p;->adu:Z

    if-eqz v0, :cond_9

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_9
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const v0, 0x7f04004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/p;->aeo:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/common/o/p;->aeo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/common/o/p;->ame(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/android/common/o/p;->aeo:Landroid/view/View;

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .registers 5

    .prologue
    .line 517
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onHiddenChanged(Z)V

    .line 518
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHiddenChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    if-eqz v0, :cond_25

    .line 520
    iget-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 516
    :cond_25
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 176
    iget-boolean v0, p0, Lcom/android/common/o/p;->adu:Z

    if-eqz v0, :cond_9

    .line 177
    return-void

    .line 179
    :cond_9
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/android/common/o/p;->amc()V

    .line 181
    invoke-virtual {p0}, Lcom/android/common/o/p;->alZ()V

    .line 182
    iget-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    if-eqz v0, :cond_22

    .line 183
    iget-object v0, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 184
    iput-object v2, p0, Lcom/android/common/o/p;->aem:Landroid/widget/Toast;

    .line 174
    :cond_22
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 435
    packed-switch p1, :pswitch_data_4e

    .line 434
    :goto_4
    return-void

    .line 438
    :pswitch_5
    iget-object v0, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 439
    array-length v1, p3

    if-lez v1, :cond_3f

    .line 440
    aget v1, p3, v2

    if-nez v1, :cond_3f

    .line 441
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Location permission is granted"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_27
    iget-object v0, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 448
    iget-object v1, p0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/r/a;->anf(Z)V

    .line 449
    invoke-virtual {p0}, Lcom/android/common/o/p;->notifyDataSetChanged()V

    goto :goto_4

    .line 444
    :cond_3f
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Location permission is denied"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 435
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/common/o/p;->adu:Z

    if-eqz v0, :cond_8

    .line 166
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 167
    return-void

    .line 169
    :cond_8
    sget-object v0, Lcom/android/common/o/p;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 164
    return-void
.end method
