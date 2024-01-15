export class Moderator {
    static moderate(text: string): string
    {
        if (text.toLowerCase().includes('orange')) {
            return 'rejected'
        }

        return 'approved';
    }
}